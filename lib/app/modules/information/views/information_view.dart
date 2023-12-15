import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';

import '../controllers/information_controller.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  Widget addressWidget(
      {required double width,
      required Widget homeWidget,
      required Widget villegeNumberWidget,
      required Widget villegeNameWidget,
      required Widget subStreetNameWidget,
      required Widget streetNameWidget,
      required Widget subDistrictNameWidget,
      required Widget districtNameWidget,
      required Widget provinceNameWidget,
      required Widget zipCodeWidget,
      required Widget countryWidget}) {
    return Column(children: [
      Row(children: [
        SizedBox(width: width * 0.155, child: homeWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .1, child: villegeNumberWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: villegeNameWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: subStreetNameWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: streetNameWidget),
      ]),
      const SizedBox(height: 10),
      Row(children: [
        SizedBox(width: width * .155, child: subDistrictNameWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: districtNameWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: provinceNameWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .155, child: zipCodeWidget),
        SizedBox(width: width * .01),
        SizedBox(width: width * .1, child: countryWidget),
      ])
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => InformationController());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          title: SizedBox(
              width: width * .3,
              child: const FittedBox(child: Text('กรอกข้อมูลส่วนตัว'))),
          titleSpacing: width * .1,
          centerTitle: false,
        ),
        body: GetBuilder<InformationController>(builder: (ctrl) {
          final regisHouse = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'บ้านเลขที่', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredCountryErrorMessage),
              onChanged: (value) => ctrl.rhOnChange(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final regisVillage = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่ที่'))),
              onChanged: (value) => ctrl.rvOnChange(value),
              onTap: () => ctrl.rhOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final regisVilName = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่บ้าน'))),
              onChanged: (value) => ctrl.rvnOnChange(value),
              onTap: () => ctrl.rhOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisSubStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ซอย'))),
              onChanged: (value) => ctrl.rssnOnChange(value),
              onTap: () => ctrl.rhOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ถนน'))),
              onChanged: (value) => ctrl.rsnOnChange(value),
              onTap: () => ctrl.rhOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisSubDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'แขวงตำบล', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredSubDistrictNameErrorMessage),
              onChanged: (value) => ctrl.rsdnOnChange(value),
              onTap: () => ctrl.rhOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'เขตอำเภอ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredDistrictNameErrorMessage),
              onChanged: (value) => ctrl.rdnOnChange(value),
              onTap: () => ctrl.rsdnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisProvince = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'จังหวัด', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredProvinceNameErrorMessage),
              onChanged: (value) => ctrl.rpnOnChange(value),
              onTap: () => ctrl.rdnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisZipcode = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'รหัสไปรษณีย์', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredZipCodeErrorMessage),
              onChanged: (value) => ctrl.rzcOnChange(value),
              onTap: () => ctrl.rpnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final regisCountry = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'ประเทศ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.registeredCountryErrorMessage),
              onChanged: (value) => ctrl.rcnOnChange(value),
              onTap: () => ctrl.rzcOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);

          final regisAddress = addressWidget(
              width: width,
              homeWidget: regisHouse,
              villegeNumberWidget: regisVillage,
              villegeNameWidget: regisVilName,
              subStreetNameWidget: regisSubStreet,
              streetNameWidget: regisStreet,
              subDistrictNameWidget: regisSubDistrict,
              districtNameWidget: regisDistrict,
              provinceNameWidget: regisProvince,
              zipCodeWidget: regisZipcode,
              countryWidget: regisCountry);
          final registeredAddressListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ที่อยู่ตามบัตรประชาชน',
                ),
              ),
              leading: Radio<CurrentAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: CurrentAddressEnum.registered,
                  groupValue: ctrl.currentAddressEnumGroupValue,
                  onChanged: (CurrentAddressEnum? value) =>
                      ctrl.setCurrentAddress(value)));
          final currentAddressListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ที่อยู่อื่น (โปรดระบุ)',
                ),
              ),
              leading: Radio<CurrentAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: CurrentAddressEnum.current,
                  groupValue: ctrl.currentAddressEnumGroupValue,
                  onChanged: (CurrentAddressEnum? value) =>
                      ctrl.setCurrentAddress(value)));

          final currentHouse = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'บ้านเลขที่', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentCountryErrorMessage),
              onChanged: (value) => ctrl.chOnChange(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final currentVillage = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่ที่'))),
              onChanged: (value) => ctrl.cvOnChange(value),
              onTap: () => ctrl.chOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final currentVilName = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่บ้าน'))),
              onChanged: (value) => ctrl.cvnOnChange(value),
              onTap: () => ctrl.chOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentSubStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ซอย'))),
              onChanged: (value) => ctrl.cssnOnChange(value),
              onTap: () => ctrl.chOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ถนน'))),
              onChanged: (value) => ctrl.csnOnChange(value),
              onTap: () => ctrl.chOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentSubDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'แขวงตำบล', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentSubDistrictNameErrorMessage),
              onChanged: (value) => ctrl.csdnOnChange(value),
              onTap: () => ctrl.chOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'เขตอำเภอ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentDistrictNameErrorMessage),
              onChanged: (value) => ctrl.cdnOnChange(value),
              onTap: () => ctrl.csdnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentProvince = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'จังหวัด', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentProvinceNameErrorMessage),
              onChanged: (value) => ctrl.cpnOnChange(value),
              onTap: () => ctrl.cdnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentZipcode = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'รหัสไปรษณีย์', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentZipCodeErrorMessage),
              onChanged: (value) => ctrl.czcOnChange(value),
              onTap: () => ctrl.cpnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentCountry = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'ประเทศ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.currentCountryErrorMessage),
              onChanged: (value) => ctrl.ccnOnChange(value),
              onTap: () => ctrl.czcOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final currentAddress = addressWidget(
              width: width,
              homeWidget: currentHouse,
              villegeNumberWidget: currentVillage,
              villegeNameWidget: currentVilName,
              subStreetNameWidget: currentSubStreet,
              streetNameWidget: currentStreet,
              subDistrictNameWidget: currentSubDistrict,
              districtNameWidget: currentDistrict,
              provinceNameWidget: currentProvince,
              zipCodeWidget: currentZipcode,
              countryWidget: currentCountry);

          final occupationAndSourceOfIncome = RichText(
              text: const TextSpan(
                  text: 'อาชีพปัจจุบันและแหล่งที่มาของเงินลงทุน',
                  children: [
                TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                    ))
              ]));

          final sourceOfIncome = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.sourceOfIncomeErrorMessage,
                  label: RichText(
                      text: const TextSpan(
                          text: 'แหล่งที่มาของเงินลงทุน',
                          children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
              value: ctrl.sourceOfIncome,
              onChanged: (value) => ctrl.setSourceOfIncome(value),
              items: [
                for (var data in ctrl.sourceOfIncomeItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final occupation = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.occupationErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'อาชีพ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.occupation,
              onChanged: (value) => ctrl.setoccupation(value),
              items: [
                for (var data in ctrl.occupationItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final officeName = TextField(
              decoration: InputDecoration(
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(
                              text: 'ที่อยู่สถานที่ทำงาน',
                              children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
                  errorText: ctrl.officeNameErrorMessage),
              onChanged: (value) => ctrl.setofficeName(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final typeOfBusiness = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.typeOfBusinessErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'ประเภทธุรกิจ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.typeOfBusiness,
              onChanged: (value) => ctrl.settypeOfBusiness(value),
              items: [
                for (var data in ctrl.typeOfBusinessItems)
                  DropdownMenuItem(
                      value: data, child: FittedBox(child: Text(data)))
              ]);
          final position = TextField(
              decoration: InputDecoration(
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'ตำแหน่ง', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.positionErrorMessage),
              onChanged: (value) => ctrl.setposition(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final salary = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.salaryErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'รายได้', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.salary,
              onChanged: (value) => ctrl.setsalary(value),
              items: [
                for (var data in ctrl.salaryItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);

          final officeLocation = RichText(
              text: const TextSpan(text: 'ที่ตั้งที่ทำงาน', children: [
            TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                ))
          ]));
          final occupationRegisteredAddressListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ที่อยู่ตามบัตรประชาชน',
                ),
              ),
              leading: Radio<OfficeAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: OfficeAddressEnum.registered,
                  groupValue: ctrl.officeAddressEnumGroupValue,
                  onChanged: (OfficeAddressEnum? value) =>
                      ctrl.setOfficeAddress(value)));
          final occupationCurrentAddressListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ที่อยู่ปัจจุบัน',
                ),
              ),
              leading: Radio<OfficeAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: OfficeAddressEnum.current,
                  groupValue: ctrl.officeAddressEnumGroupValue,
                  onChanged: (OfficeAddressEnum? value) =>
                      ctrl.setOfficeAddress(value)));
          final occupationOfficeAddressListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ที่อยู่อื่น (โปรดระบุ)',
                ),
              ),
              leading: Radio<OfficeAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: OfficeAddressEnum.office,
                  groupValue: ctrl.officeAddressEnumGroupValue,
                  onChanged: (OfficeAddressEnum? value) =>
                      ctrl.setOfficeAddress(value)));

          final officeHouse = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'บ้านเลขที่', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeCountryErrorMessage),
              onChanged: (value) => ctrl.ohOnChange(value),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final officeVillage = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่ที่'))),
              onChanged: (value) => ctrl.ovOnChange(value),
              onTap: () => ctrl.ohOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ]);
          final officeVilName = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('หมู่บ้าน'))),
              onChanged: (value) => ctrl.ovnOnChange(value),
              onTap: () => ctrl.ohOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeSubStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ซอย'))),
              onChanged: (value) => ctrl.ossnOnChange(value),
              onTap: () => ctrl.ohOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeStreet = TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(child: Text('ถนน'))),
              onChanged: (value) => ctrl.osnOnChange(value),
              onTap: () => ctrl.ohOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeSubDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'แขวงตำบล', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeSubDistrictNameErrorMessage),
              onChanged: (value) => ctrl.osdnOnChange(value),
              onTap: () => ctrl.ohOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeDistrict = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'เขตอำเภอ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeDistrictNameErrorMessage),
              onChanged: (value) => ctrl.odnOnChange(value),
              onTap: () => ctrl.osdnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeProvince = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'จังหวัด', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeProvinceNameErrorMessage),
              onChanged: (value) => ctrl.opnOnChange(value),
              onTap: () => ctrl.odnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeZipcode = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'รหัสไปรษณีย์', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeZipCodeErrorMessage),
              onChanged: (value) => ctrl.ozcOnChange(value),
              onTap: () => ctrl.opnOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeCountry = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'ประเทศ', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.officeCountryErrorMessage),
              onChanged: (value) => ctrl.ocnOnChange(value),
              onTap: () => ctrl.ozcOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);
          final officeAddress = addressWidget(
              width: width,
              homeWidget: officeHouse,
              villegeNumberWidget: officeVillage,
              villegeNameWidget: officeVilName,
              subStreetNameWidget: officeSubStreet,
              streetNameWidget: officeStreet,
              subDistrictNameWidget: officeSubDistrict,
              districtNameWidget: officeDistrict,
              provinceNameWidget: officeProvince,
              zipCodeWidget: officeZipcode,
              countryWidget: officeCountry);

          final registeredAddressText = Text(
              'บ้านเลขที่ ${ctrl.registeredHouseNumber}, หมู่ที่ ${ctrl.registeredVillageNumber}, หมู่บ้าน ${ctrl.registeredVillageName}, ซอย ${ctrl.registeredSubStreetName}, ถนน ${ctrl.registeredStreetName}, แขวงตำบล ${ctrl.registeredSubDistrictName}, เขตอำเภอ ${ctrl.registeredDistrictName}, จังหวัด ${ctrl.registeredProvinceName}, รหัสไปรษณีย์ ${ctrl.registeredZipCode}, ประเทศ ${ctrl.registeredCountry}');
          final currentAddressText = Text(
              'บ้านเลขที่ ${ctrl.currentHouseNumber}, หมู่ที่ ${ctrl.currentVillageNumber}, หมู่บ้าน ${ctrl.currentVillageName}, ซอย ${ctrl.currentSubStreetName}, ถนน ${ctrl.currentStreetName}, แขวงตำบล ${ctrl.currentSubDistrictName}, เขตอำเภอ ${ctrl.currentDistrictName}, จังหวัด ${ctrl.currentProvinceName}, รหัสไปรษณีย์ ${ctrl.currentZipCode}, ประเทศ ${ctrl.currentCountry}');

          final objectiveOfInvestment = RichText(
              text: const TextSpan(text: 'วัตถุประสงค์ของการลงทุน', children: [
            TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                ))
          ]));
          final shortTermInvestmentChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text('เพื่อการลงทุนระยะสั้น'),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.shortTermInvestment,
              onChanged: (value) => ctrl.checkshortTermInvestment(value));
          final longTermInvestmentChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text('เพื่อการลงทุนระยะยาว'),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.longTermInvestment,
              onChanged: (value) => ctrl.checklongTermInvestment(value));
          final taxesReduceInvestmentChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text('เพื่อสิทธิประโยชน์ทางภาษี'),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.taxesReduceInvestment,
              onChanged: (value) => ctrl.checktaxesReduceInvestment(value));
          final retirementInvestmentChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text('เพื่อการเกษียร'),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.retirementInvestment,
              onChanged: (value) => ctrl.checkretirementInvestment(value));

          final firstBookBankAccount = RichText(
              text: const TextSpan(
                  text:
                      'บัญชีธนาคารของท่านเพื่อทำธุรกรรมกับบริษัทฯ(บัญชีที่ 1)',
                  children: [
                TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                    ))
              ]));
          final firstBankNameDropDown = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.firstBankNameErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'ธนาคาร', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.firstBankName,
              onChanged: (value) => ctrl.setFirstBankName(value),
              items: [
                for (var data in ctrl.firstBankNameItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final firstBankBranchDropDown = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.firstBankBranchErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'สาขา', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.firstBankBranch,
              onChanged: (value) => ctrl.setFirstBankBranch(value),
              items: [
                for (var data in ctrl.firstBankNameItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final firstBankAccountTextField = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'เลขบัญชี', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.firstBankAccountErrorMessage),
              onChanged: (value) => ctrl.firstBankAccountOnChange(value),
              onTap: () => ctrl.firstBankAccountOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
              ]);

          final secondBookBankAccount = RichText(
              text: const TextSpan(
                  text:
                      'บัญชีธนาคารของท่านเพื่อทำธุรกรรมกับบริษัทฯ(บัญชีที่ 2)',
                  children: [
                TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                    ))
              ]));
          final useSecondBankAccountListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ใช้',
                ),
              ),
              leading: Radio<SecondBookBankAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: SecondBookBankAddressEnum.yes,
                  groupValue: ctrl.secondBookBankAddressEnumGroupValue,
                  onChanged: (SecondBookBankAddressEnum? value) =>
                      ctrl.setUseSecondBookBank(value)));
          final donotUseSecondBankAccountListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(child: Text('ไม่ใช้')),
              leading: Radio<SecondBookBankAddressEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: SecondBookBankAddressEnum.no,
                  groupValue: ctrl.secondBookBankAddressEnumGroupValue,
                  onChanged: (SecondBookBankAddressEnum? value) =>
                      ctrl.setUseSecondBookBank(value)));
          final secondBankNameDropDown = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.secondBankNameErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'ธนาคาร', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.secondBankName,
              onChanged: (value) => ctrl.setsecondBankName(value),
              items: [
                for (var data in ctrl.secondBankNameItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final secondBankBranchDropDown = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.secondBankBranchErrorMessage,
                  label: RichText(
                      text: const TextSpan(text: 'สาขา', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
              value: ctrl.secondBankBranch,
              onChanged: (value) => ctrl.setsecondBankBranch(value),
              items: [
                for (var data in ctrl.secondBankNameItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);
          final secondBankAccountTextField = TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  label: FittedBox(
                      child: RichText(
                          text: const TextSpan(text: 'เลขบัญชี', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ]))),
                  errorText: ctrl.secondBankAccountErrorMessage),
              onChanged: (value) => ctrl.secondBankAccountOnChange(value),
              onTap: () => ctrl.secondBankAccountOnTap(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
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
          final nextButton = ElevatedButton(
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

          return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.withOpacity(.3)),
              child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: width * .2,
                                    child: FittedBox(
                                        child: RichText(
                                            text: const TextSpan(
                                                text: 'ที่อยู่ตามบัตรประชาชน',
                                                children: [
                                          TextSpan(
                                              text: '*',
                                              style:
                                                  TextStyle(color: Colors.red))
                                        ])))),
                                const SizedBox(height: 10),
                                regisAddress,
                              ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        width: width * .1,
                                        child: FittedBox(
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: 'ที่อยู่ปัจจุบัน',
                                                    children: [
                                              TextSpan(
                                                  text: '*',
                                                  style: TextStyle(
                                                      color: Colors.red))
                                            ])))),
                                    SizedBox(
                                      width: width * .33,
                                    ),
                                    SizedBox(
                                        width: width * .18,
                                        child: registeredAddressListTile),
                                    SizedBox(
                                        width: width * .15,
                                        child: currentAddressListTile),
                                  ],
                                ),
                                (ctrl.currentAddressEnumGroupValue ==
                                        CurrentAddressEnum.current)
                                    ? Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          currentAddress
                                        ],
                                      )
                                    : const Column(),
                                (ctrl.currentAddressEnumGroupValue ==
                                        CurrentAddressEnum.registered)
                                    ? Column(children: [
                                        const SizedBox(height: 10),
                                        registeredAddressText
                                      ])
                                    : const Column(),
                              ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: width * .325,
                                    child: FittedBox(
                                        child: occupationAndSourceOfIncome)),
                                const SizedBox(height: 10),
                                Row(children: [
                                  SizedBox(
                                      width: width * .3, child: sourceOfIncome),
                                  SizedBox(width: width * .03),
                                  SizedBox(
                                      width: width * .43, child: occupation),
                                ]),
                                const SizedBox(height: 10),
                                Row(children: [
                                  SizedBox(
                                      width: width * .3, child: officeName),
                                  SizedBox(width: width * .03),
                                  SizedBox(
                                      width: width * .43,
                                      child: typeOfBusiness),
                                ]),
                                const SizedBox(height: 10),
                                Row(children: [
                                  SizedBox(width: width * .3, child: position),
                                  SizedBox(width: width * .03),
                                  SizedBox(width: width * .43, child: salary),
                                ])
                              ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * .02, 15, width * .02, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(children: [
                                  SizedBox(
                                      width: width * .115,
                                      child: FittedBox(child: officeLocation)),
                                  SizedBox(width: width * .195),
                                  SizedBox(
                                      width: width * .18,
                                      child:
                                          occupationRegisteredAddressListTile),
                                  SizedBox(
                                      width: width * .12,
                                      child: occupationCurrentAddressListTile),
                                  SizedBox(
                                      width: width * .15,
                                      child: occupationOfficeAddressListTile),
                                ]),
                                (ctrl.officeAddressEnumGroupValue ==
                                        OfficeAddressEnum.registered)
                                    ? Column(children: [
                                        const SizedBox(height: 10),
                                        registeredAddressText
                                      ])
                                    : const Column(),
                                (ctrl.officeAddressEnumGroupValue ==
                                            OfficeAddressEnum.current &&
                                        ctrl.currentHouseNumber == null)
                                    ? Column(children: [
                                        const SizedBox(height: 10),
                                        registeredAddressText
                                      ])
                                    : const Column(),
                                (ctrl.officeAddressEnumGroupValue ==
                                            OfficeAddressEnum.current &&
                                        ctrl.currentHouseNumber != null)
                                    ? Column(children: [
                                        const SizedBox(height: 10),
                                        currentAddressText
                                      ])
                                    : const Column(),
                                (ctrl.officeAddressEnumGroupValue ==
                                        OfficeAddressEnum.office)
                                    ? officeAddress
                                    : const Column(),
                              ],
                            )),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * .02, 15, width * .02, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: width * .22,
                                    child: FittedBox(
                                        child: objectiveOfInvestment)),
                                SizedBox(
                                    height: 30,
                                    child: shortTermInvestmentChecklist),
                                SizedBox(
                                    height: 30,
                                    child: longTermInvestmentChecklist),
                                SizedBox(
                                    height: 30,
                                    child: taxesReduceInvestmentChecklist),
                                SizedBox(
                                    height: 30,
                                    child: retirementInvestmentChecklist),
                              ],
                            )),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * .02, 15, width * .02, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: width * .45,
                                    child:
                                        FittedBox(child: firstBookBankAccount)),
                                Row(
                                  children: [
                                    SizedBox(
                                        width: width * .24,
                                        child: firstBankNameDropDown),
                                    SizedBox(width: width * .02),
                                    SizedBox(
                                        width: width * .24,
                                        child: firstBankBranchDropDown),
                                    SizedBox(width: width * .02),
                                    SizedBox(
                                        width: width * .24,
                                        child: firstBankAccountTextField),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    SizedBox(
                                        width: width * .45,
                                        child: FittedBox(
                                            child: secondBookBankAccount)),
                                    SizedBox(
                                      width: width * .1825,
                                    ),
                                    SizedBox(
                                        width: width * .0555,
                                        child: useSecondBankAccountListTile),
                                    SizedBox(
                                        width: width * .07,
                                        child:
                                            donotUseSecondBankAccountListTile),
                                  ],
                                ),
                                (ctrl.secondBookBankAddressEnumGroupValue ==
                                        SecondBookBankAddressEnum.yes)
                                    ? Row(children: [
                                        SizedBox(
                                            width: width * .24,
                                            child: secondBankNameDropDown),
                                        SizedBox(width: width * .02),
                                        SizedBox(
                                            width: width * .24,
                                            child: secondBankBranchDropDown),
                                        SizedBox(width: width * .02),
                                        SizedBox(
                                            width: width * .24,
                                            child: secondBankAccountTextField),
                                      ])
                                    : const Row()
                              ],
                            )),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Row(children: [
                          previousButton,
                          SizedBox(width: width * .5),
                          nextButton
                        ]),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }
}
