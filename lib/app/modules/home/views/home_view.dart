import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/preinfo_data.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final width = Get.size.width;
    // String? errorEmailMessage;
    // final email = false.obs;

    return Scaffold(
        appBar: AppBar(
          title: AutoSizeText(width * .3, 'กรุณากรอกข้อมูลเพื่อเปิดบัญชี'),
          centerTitle: true,
        ),
        body: GetBuilder<HomeController>(builder: (ctrl) {
          final thTitleDropDown = DropdownButtonFormField(
              decoration: InputDecoration(
                  label: FittedBox(
                child: RichText(
                    text: const TextSpan(
                        text: 'คำนำหน้าชื่อ (ภาษาไทย)',
                        children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: Colors.orange))
                    ])),
              )),
              value: ctrl.thTitle,
              onChanged: (value) => ctrl.setThTitleName(value),
              items: [
                for (var data in ctrl.thList)
                  DropdownMenuItem(
                    value: data,
                    child: Text(data),
                  )
              ]);

          final thNameTextField = TextField(
            decoration: InputDecoration(
                label: FittedBox(
                  child: RichText(
                      text: const TextSpan(text: 'ชื่อ (ภาษาไทย)', children: [
                    TextSpan(text: '*', style: TextStyle(color: Colors.red))
                  ])),
                ),
                errorText: ctrl.thNameErrorMessage),
            onChanged: (value) => ctrl.setThName(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[ก-๛ ]'))
            ],
          );

          final thSurnameTextField = TextField(
            decoration: InputDecoration(
                label: FittedBox(
                    child: RichText(
                        text: const TextSpan(
                            text: 'นามสกุล (ภาษาไทย)',
                            children: [
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ]))),
                errorText: ctrl.thSurnameErrorMessage),
            onChanged: (value) => ctrl.setThSurname(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[ก-๛ ]'))
            ],
          );

          final engTitleDropDown = DropdownButtonFormField(
              decoration: InputDecoration(
                  label: FittedBox(
                child: RichText(
                    text: const TextSpan(
                        text: 'คำนำหน้าชื่อ (ภาษาอังกฤษ)',
                        children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: Colors.orange))
                    ])),
              )),
              value: ctrl.engTitle,
              onChanged: (value) => ctrl.setEngTitleName(value),
              items: [
                for (var data in ctrl.engList)
                  DropdownMenuItem(
                    value: data,
                    child: Text(data),
                  )
              ]);

          final engNameTextField = TextField(
            decoration: InputDecoration(
                label: FittedBox(
                  child: RichText(
                      text: const TextSpan(
                          text: 'ชื่อ (ภาษาอังกฤษ)',
                          children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ])),
                ),
                errorText: ctrl.engNameErrorMessage),
            onChanged: (value) => ctrl.setEngName(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]'))
            ],
          );

          final engSurnameTextField = TextField(
            decoration: InputDecoration(
                label: FittedBox(
                    child: RichText(
                        text: const TextSpan(
                            text: 'นามสกุล (ภาษาอังกฤษ)',
                            children: [
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ]))),
                errorText: ctrl.engSurnameErrorMessage),
            onChanged: (value) => ctrl.setEngSurname(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]'))
            ],
          );
          final emailTextField = TextField(
            decoration: InputDecoration(
                prefix: const Icon(Icons.email),
                label: FittedBox(
                    child: RichText(
                        text: const TextSpan(text: 'อีเมล', children: [
                  TextSpan(text: '*', style: TextStyle(color: Colors.red))
                ]))),
                errorText: ctrl.emailErrorMessage),
            onChanged: (value) => ctrl.verifyEmailFormat(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]'))
            ],
          );
          final mobileTextField = TextField(
            decoration: InputDecoration(
                prefix: const Icon(Icons.phone_iphone),
                label: FittedBox(
                    child: RichText(
                        text: const TextSpan(
                            text: 'หมายเลขโทรศัพท์มือถือ',
                            children: [
                      TextSpan(text: '*', style: TextStyle(color: Colors.red))
                    ]))),
                errorText: ctrl.mobileErrorMessage),
            onChanged: (value) => ctrl.verifyMobileFormat(value),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]'))
            ],
          );

          final agreement = CheckboxListTile(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text(
                  'ข้าพเจ้าได้อ่านและตกลงตามข้อมกำหนดและเงื่อนไขและรับทราบนโยบายความเป็นส่วนตัว ซึ่งระบุวิธีการที่บริษัท ฟินันเซีย ดิจิตทัล แอสแซท จำกัด("บริษัท")',
                  maxLines: 2),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.agreement,
              onChanged: (value) => ctrl.checkAgreement(value));

          final policyAgreement = TextButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.grey)),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('นโยบายความเป็นส่วนตัว'),
                        content: SizedBox(
                          width: (MediaQuery.of(context).size.width * 0.6),
                          child: SingleChildScrollView(
                            padding: const EdgeInsetsDirectional.all(15),
                            child: Text(policyAgreementText),
                          ),
                        ),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          TextButton(
                              onPressed: () {
                                ctrl.popupAgreement();
                                Navigator.pop(context, 'OK');
                              },
                              child: const Text('ตกลง'))
                        ],
                      )),
              child: const Text(
                'อ่านรายละเอียดเพิ่มเติม',
                maxLines: 1,
              ));

          final usernamePasswordSubject = FittedBox(
            child: RichText(
                text: const TextSpan(
                    text:
                        'ข้อมูลสำหรับรับ Username, Password และเอกสารจากทางบริษัทฯ',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold))),
          );

          return Center(
              child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: width * .3, child: thTitleDropDown),
                        Row(
                          children: [
                            SizedBox(width: width * .3, child: thNameTextField),
                            SizedBox(width: width * .01),
                            SizedBox(
                                width: width * .49, child: thSurnameTextField),
                          ],
                        ),
                        SizedBox(width: width * .3, child: engTitleDropDown),
                        Row(
                          children: [
                            SizedBox(
                                width: width * .3, child: engNameTextField),
                            SizedBox(width: width * .01),
                            SizedBox(
                                width: width * .49, child: engSurnameTextField),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(height: 20),
                        SizedBox(
                            width: width * .8, child: usernamePasswordSubject),
                        // const SizedBox(height: 20),
                        SizedBox(width: width * .8, child: emailTextField),
                        SizedBox(width: width * .8, child: mobileTextField),
                        SizedBox(width: width * .8, child: agreement),
                        SizedBox(width: width * .3, child: policyAgreement)
                      ])));
        }));
  }
}

Widget AutoSizeText(double width, String text) {
  return SizedBox(width: width, child: FittedBox(child: Text(text)));
}
