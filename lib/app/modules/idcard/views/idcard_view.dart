// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';

import '../controllers/idcard_controller.dart';

class IdcardView extends GetView<IdcardController> {
  const IdcardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final title = SizedBox(
        width: width * .6,
        child: const FittedBox(child: Text('กรอกข้อมูลบัตรประชาชน')));
    return Scaffold(
        appBar: AppBar(
          title: title,
          centerTitle: true,
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
              leading: Radio<MarriageStatue>(
                  value: MarriageStatue.single,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatue? value) =>
                      ctrl.setMarriageStatus(value)));
          final marriedListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'สมรส',
                ),
              ),
              leading: Radio<MarriageStatue>(
                  value: MarriageStatue.married,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatue? value) =>
                      ctrl.setMarriageStatus(value)));
          final disvorcedListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'หย่า',
                ),
              ),
              leading: Radio<MarriageStatue>(
                  value: MarriageStatue.disvorced,
                  groupValue: ctrl.marriageStatusGroupValue,
                  onChanged: (MarriageStatue? value) =>
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
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ตัวเลข 13 หลัก',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.citizenIDErrorMassage),
              onChanged: (value) => ctrl.setCitizenID(value),
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

          final laserTextField = TextField(
              decoration: InputDecoration(
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ตัวเลข 13 หลัก',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.citizenIDErrorMassage),
              onChanged: (value) => ctrl.setCitizenID(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);

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
                            child: Row(children: [
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
                                    width: width * .4, child: laserTextField),
                              ])
                            ])),
                      ])));
        }));
  }
}
