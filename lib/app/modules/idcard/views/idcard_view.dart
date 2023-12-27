// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';

import '../controllers/idcard_controller.dart';

class IdcardView extends StatelessWidget {
  const IdcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final title = SizedBox(
        width: width * .3,
        child: const FittedBox(child: Text('กรอกข้อมูลบัตรประชาชน')));
    return Scaffold(
        appBar: AppBar(
          title: title,
          titleSpacing: width * .1,
          centerTitle: false,
        ),
        body: GetBuilder<IdcardController>(builder: (ctrl) {
          ctrl.createYearLists();
          final birthDateText = FittedBox(
            child: RichText(
              text: const TextSpan(text: 'วัน/เดือน/ปี เกิด', children: [
                TextSpan(text: '*', style: TextStyle(color: Colors.orange))
              ]),
            ),
          );

          final dateFeild = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.datepickerErrorMassage,
                  label: const Text('วันที่',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black))),
              value: ctrl.datepicker,
              onChanged: (value) => ctrl.setDatePicker(value),
              items: [
                for (var data in ctrl.dateItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);

          final monthFeild = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.monthpickerErrorMassage,
                  label: const Text('เดือน',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black))),
              value: ctrl.monthpicker,
              onChanged: (value) => ctrl.setMonthPicker(value),
              onTap: () => ctrl.isDateOfBirthIsNull(),
              items: [
                for (var data in ctrl.monthItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);

          final yearFeild = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.yearpickerErrorMassage,
                  label: const Text('ปี(พ.ศ.)',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black))),
              value: ctrl.yearpicker,
              onChanged: (value) => ctrl.setYearPicker(value),
              onTap: () => ctrl.isMonthOfBirthIsNull(),
              items: [
                for (var data in ctrl.yearItems!)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);

          final statusText = FittedBox(
            child: RichText(
              text: const TextSpan(text: 'สถานะ', children: [
                TextSpan(text: '*', style: TextStyle(color: Colors.orange))
              ]),
            ),
          );

          final singleListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'โสด',
                ),
              ),
              leading: Radio<MarriageStatueEnum>(
                  value: MarriageStatueEnum.single,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatueEnum? value) =>
                      ctrl.setMarriageStatus(value)));
          final marriedListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'สมรส',
                ),
              ),
              leading: Radio<MarriageStatueEnum>(
                  value: MarriageStatueEnum.married,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatueEnum? value) =>
                      ctrl.setMarriageStatus(value)));
          final disvorcedListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'หย่า',
                ),
              ),
              leading: Radio<MarriageStatueEnum>(
                  value: MarriageStatueEnum.disvorced,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatueEnum? value) =>
                      ctrl.setMarriageStatus(value)));

          final citizenID = FittedBox(
            child: RichText(
              text: const TextSpan(
                  text: 'หมายเลขบัตรประจำตัวประชาชน',
                  children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.orange))
                  ]),
            ),
          );

          final cidTextField = TextField(
              decoration: InputDecoration(
                  suffix: (ctrl.citizenIDValidate)
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : null,
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ตัวเลข 13 หลัก',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.citizenIDErrorMassage),
              onChanged: (value) => ctrl.setCitizenID(value),
              onTap: () => ctrl.isMarriageStatusIsNull(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);

          final laserCode = FittedBox(
            child: RichText(
              text: const TextSpan(
                  text: 'เลขหลังบัตรประชาชน(Laser Code)',
                  children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.orange))
                  ]),
            ),
          );
          final laserCodeText = FittedBox(
            child: RichText(
              text: const TextSpan(
                  text: 'เลขหลังบัตรประชาชน(Laser Code)',
                  children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.orange))
                  ]),
            ),
          );

          final laserPrefixTextField = TextField(
              decoration: InputDecoration(
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ตัวอักษร 2 หลัก',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.laserPrefixErrorMassage),
              onChanged: (value) => ctrl.setLaserPrefix(value),
              onTap: () => ctrl.isCitizendIDIsNull(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
              ]);
          const laserDashText = FittedBox(
              child: Text(
            '-',
            textAlign: TextAlign.center,
          ));
          final laserSuffixTextField = TextField(
              decoration: InputDecoration(
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ตัวเลข 10 หลัก',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.laserSuffixErrorMassage),
              onChanged: (value) => ctrl.setLaserSuffix(value),
              onTap: () => ctrl.islaserPrefixIsNull(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final previousButton = ElevatedButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () => ctrl.previousButtonOnPress(),
            child: const Row(
              children: [
                Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                  color: Colors.black,
                ),
                Text('ย้อนกลับ',
                    style: TextStyle(fontSize: 10, color: Colors.black))
              ],
            ),
          );
          final nextButton = nextButtonIDCard(ctrl);

          return Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
              child: SingleChildScrollView(
                  padding:
                      EdgeInsets.fromLTRB(width * 0.09, 20, width * 0.09, 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * 0.01, 5, width * 0.01, 5),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(children: [
                              SizedBox(width: width * .2, child: birthDateText),
                              SizedBox(width: width * .2),
                              SizedBox(width: width * .12, child: dateFeild),
                              SizedBox(width: width * .02),
                              SizedBox(width: width * .12, child: monthFeild),
                              SizedBox(width: width * .02),
                              SizedBox(width: width * .12, child: yearFeild),
                            ])),
                        const SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * 0.01, 5, width * 0.01, 5),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Column(children: [
                              Row(children: [
                                SizedBox(width: width * .1, child: statusText),
                                SizedBox(width: width * .3),
                                SizedBox(
                                    width: width * .115, child: singleListTile),
                                SizedBox(width: width * .02),
                                SizedBox(
                                    width: width * .13, child: marriedListTile),
                                SizedBox(width: width * .02),
                                SizedBox(
                                    width: width * .115,
                                    child: disvorcedListTile),
                              ]),
                              (ctrl.merriageStatusErrorMessage != null)
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                          Text(
                                              ctrl.merriageStatusErrorMessage ??
                                                  '',
                                              style: const TextStyle(
                                                  color: Colors.red))
                                        ])
                                  : const Row(),
                            ])),
                        const SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * 0.01, 5, width * 0.01, 5),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(children: [
                              SizedBox(width: width * .33, child: citizenID),
                              SizedBox(width: width * .07),
                              SizedBox(width: width * .4, child: cidTextField),
                            ])),
                        const SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * 0.01, 5, width * 0.01, 5),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(children: [
                              SizedBox(width: width * .35, child: laserCode),
                              SizedBox(width: width * .05),
                              Column(children: [
                                SizedBox(
                                    width: width * .4, child: laserCodeText),
                                Row(
                                  children: [
                                    SizedBox(
                                        width: width * .11,
                                        child: laserPrefixTextField),
                                    SizedBox(
                                        width: width * .01,
                                        child: laserDashText),
                                    SizedBox(
                                        width: width * .28,
                                        child: laserSuffixTextField),
                                  ],
                                )
                              ])
                            ])),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            previousButton,
                            SizedBox(
                              width: width * .45,
                            ),
                            nextButton
                          ],
                        )
                      ])));
        }));
  }

  ElevatedButton nextButtonIDCard(IdcardController ctrl) {
    return ElevatedButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () => ctrl.nextButtonOnPress(),
          child: const Row(
            children: [
              Text(
                'ถัดไป',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
              Icon(
                Icons.arrow_circle_right,
                size: 45,
                color: Colors.orange,
              )
            ],
          ),
        );
  }
}
