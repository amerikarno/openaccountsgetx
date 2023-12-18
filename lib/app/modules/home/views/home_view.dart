import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/preinfo_data.dart';
import 'package:openaccountsgetx/app/modules/home/controllers/verify_email_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 225, 225),
        appBar: AppBar(
          // title: autoSizeText(width * .3, 'กรุณากรอกข้อมูลเพื่อเปิดบัญชี'),
          title: const AutoSizeText('กรุณากรอกข้อมูลเพื่อเปิดบัญชี', minFontSize: 15,maxFontSize: 25, style: TextStyle(fontSize: 20)),
          centerTitle: true,
        ),
        body: GetBuilder<HomeController>(builder: (ctrl) {
          final thTitleDropDown = DropdownButtonFormField(
              decoration: InputDecoration(
                  errorText: ctrl.thTitleErrorMessage,
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
            onTap: () => ctrl.doThTitleIsNull(),
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
            onTap: () => ctrl.doThNameIsNull(),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[ก-๛ ]'))
            ],
          );

          final engTitleDropDown = DropdownButtonFormField(
              decoration: InputDecoration(
                errorText: ctrl.engTitleErrorMessage,
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
              onTap: () => ctrl.doThSurnameIsNull(),
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
            onTap: () => ctrl.doengTitleIsNull(),
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
            onTap: () => ctrl.doengNameIsNull(),
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
            onTap: () => ctrl.doengSurnameIsNull(),
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
            onTap: () => ctrl.doemailIsNull(),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]'))
            ],
          );

          final agreement = CheckboxListTile(
              hoverColor: Colors.transparent,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const AutoSizeText(
                  'ข้าพเจ้าได้อ่านและตกลงตามข้อมกำหนดและเงื่อนไขและรับทราบนโยบายความเป็นส่วนตัว ซึ่งระบุวิธีการที่บริษัท ฟินันเซีย ดิจิตทัล แอสแซท จำกัด("บริษัท")',
                  maxLines: 2,
                  style: TextStyle(fontSize: 12)),
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
                        title: const AutoSizeText('นโยบายความเป็นส่วนตัว'),
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

          final usernamePasswordSubject = RichText(
              text: const TextSpan(
                  text:
                      'ข้อมูลสำหรับรับ Username, Password และเอกสารจากทางบริษัทฯ',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20)));
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
                  style: TextStyle(fontSize: 10),
                ),
                Icon(
                  Icons.arrow_circle_right,
                  size: 40,
                  color: Colors.orange,
                )
              ],
            ),
          );

          return Center(
              child: SingleChildScrollView(
                  padding:
                      EdgeInsets.fromLTRB(width * 0.07, 0, width * 0.07, 0),
                  child: Container(
                    padding:
                        EdgeInsets.fromLTRB(width * 0.03, 15, width * 0.03, 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: width * .3, child: thTitleDropDown),
                          Row(
                            children: [
                              SizedBox(
                                  width: width * .3, child: thNameTextField),
                              SizedBox(width: width * .01),
                              SizedBox(
                                  width: width * .49,
                                  child: thSurnameTextField),
                            ],
                          ),
                          SizedBox(width: width * .3, child: engTitleDropDown),
                          Row(
                            children: [
                              SizedBox(
                                  width: width * .3, child: engNameTextField),
                              SizedBox(width: width * .01),
                              SizedBox(
                                  width: width * .49,
                                  child: engSurnameTextField),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(height: 20),
                          SizedBox(
                              width: width * .8,
                              child: usernamePasswordSubject),
                          // const SizedBox(height: 20),
                          SizedBox(width: width * .8, child: const VerifyEmail()),
                          SizedBox(width: width * .8, child: mobileTextField),
                          SizedBox(width: width * .8, child: agreement),
                          (ctrl.agreementError!) ? Text(ctrl.agreementErrorMessage!, style: const TextStyle(color: Colors.red, fontSize: 12),) : const Row(),
                          SizedBox(width: width * .3, child: policyAgreement),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [nextButton]),
                        ]),
                  )));
        }));
  }
}

class VerifyEmail extends GetView<VerifyEmailController> {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
                prefix: const Icon(Icons.email),
                label: FittedBox(
                    child: RichText(
                        text: const TextSpan(text: 'อีเมล', children: [
                  TextSpan(text: '*', style: TextStyle(color: Colors.red))
                ]))),
                errorText: controller.emailErrorMessage),
            onChanged: null,
            onTap: null,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@.]'))
            ],
          );
  }
}
