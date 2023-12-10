import 'dart:developer';

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

  Widget houseNumberWidget(
      {String? errortext,
      Function(String)? onchanged,
      TextEditingController? controller}) {
        log('$controller');
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'บ้านเลขที่', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]);
  }

  Widget villageNumberWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: const FittedBox(child: Text('หมู่ที่')),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))]);
  }

  Widget villageNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: const FittedBox(child: Text('หมู่บ้าน')),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget subStreetNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: const FittedBox(child: Text('ซอย')),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget streetNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: const FittedBox(child: Text('ถนน')),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget subDistrictNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'แขวงตำบล', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget districtNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'เขตอำเภอ', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget provinceNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'จังหวัด', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget zipCodeNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'รหัสไปรษณีย์', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  Widget countryNameWidget(
      {String? errortext,
      Function(String)? onchanged,
      Function()? ontap,
      TextEditingController? controller}) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            label: FittedBox(
                child: RichText(
                    text: const TextSpan(text: 'ประเทศ', children: [
              TextSpan(text: '*', style: TextStyle(color: Colors.red))
            ]))),
            errorText: errortext),
        onChanged: (value) => onchanged,
        onTap: () => ontap,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9ก-๛]'))
        ]);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
          final regisHouse = houseNumberWidget(
              controller: ctrl.registeredHouseNumberTextController,
              errortext: ctrl.registeredHouseNumberErrorMessage,
              onchanged: (value) => ctrl.rhOnChange(value));
          final regisVillage = villageNumberWidget(
              controller: ctrl.registeredVillageNumberTextController,
              onchanged: (value) => ctrl.rvOnChange(value),
              ontap: () => ctrl.rhOnTap());
          final regisVilName = villageNameWidget(
              controller: ctrl.registeredVillageNameTextController,
              onchanged: (value) => ctrl.rvnOnChange(value),
              ontap: () => ctrl.rhOnTap());
          final resisSubStreet = subStreetNameWidget(
              controller: ctrl.registeredSubStreetNameTextController,
              onchanged: (value) => ctrl.rssnOnChange(value),
              ontap: () => ctrl.rhOnTap());
          final resisStreet = streetNameWidget(
              controller: ctrl.registeredStreetNameTextController,
              onchanged: (value) => ctrl.rsnOnChange(value),
              ontap: () => ctrl.rhOnTap());
          final regisSubDistrict = subDistrictNameWidget(
              controller: ctrl.registeredSubDistrictNameTextController,
              errortext: ctrl.registeredSubDistrictNameErrorMessage,
              onchanged: (value) => ctrl.rsdnOnChange(value),
              ontap: () => ctrl.rhOnTap());
          final regisDistrict = districtNameWidget(
              controller: ctrl.registeredDistrictNameTextController,
              errortext: ctrl.registeredDistrictNameErrorMessage,
              onchanged: (value) => ctrl.rdnOnChange(value),
              ontap: () => ctrl.rsdnOnTap());
          final regisProvince = provinceNameWidget(
              controller: ctrl.registeredProvinceNameTextController,
              errortext: ctrl.registeredProvinceNameErrorMessage,
              onchanged: (value) => ctrl.rpnOnChange(value),
              ontap: () => ctrl.rdnOnTap());
          final regisZipcode = zipCodeNameWidget(
              controller: ctrl.registeredZipCodeTextController,
              errortext: ctrl.registeredZipCodeErrorMessage,
              onchanged: (value) => ctrl.rzcOnChange(value),
              ontap: () => ctrl.rpnOnTap());
          final regisCountry = countryNameWidget(
              controller: ctrl.registeredCountryTextController,
              errortext: ctrl.registeredCountryErrorMessage,
              onchanged: (value) => ctrl.rcnOnChange(value),
              ontap: () => ctrl.rzcOnTap());
          final regisAddress = addressWidget(
              width: width,
              homeWidget: regisHouse,
              villegeNumberWidget: regisVillage,
              villegeNameWidget: regisVilName,
              subStreetNameWidget: resisSubStreet,
              streetNameWidget: resisStreet,
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
                  value: CurrentAddressEnum.current,
                  groupValue: ctrl.currentAddressEnumGroupValue,
                  onChanged: (CurrentAddressEnum? value) =>
                      ctrl.setCurrentAddress(value)));
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
                                    child: const FittedBox(
                                        child: Text('ที่อยู่ตามบัตรประชาชน'))),
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
                                        child: const FittedBox(
                                            child: Text('ที่อยู่ปัจจุบัน'))),
                                    SizedBox(
                                      width: width * .36,
                                    ),
                                    SizedBox(
                                        width: width * .15,
                                        child: registeredAddressListTile),
                                    SizedBox(
                                        width: width * .15,
                                        child: currentAddressListTile),
                                  ],
                                ),
                                (ctrl.currentAddressEnumGroupValue ==
                                        CurrentAddressEnum.current)
                                    ? const Column(
                                        children: [
                                          SizedBox(height: 10),
                                          // regisAddress
                                        ],
                                      )
                                    : const Column(),
                                (ctrl.currentAddressEnumGroupValue ==
                                        CurrentAddressEnum.registered)
                                    ? Column(children: [
                                        const SizedBox(height: 10),
                                        Text('${ctrl.registeredHouseNumberTextController}')
                                      ])
                                    : const Column(),
                              ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }
}
