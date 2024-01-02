import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:openaccountsgetx/app/modules/home/providers/verify_email_provider.dart';
import 'package:openaccountsgetx/app/modules/home/providers/verify_mobile_provider.dart';

class HomeController extends GetxController with StateMixin {
  HomeController();

  final verifyEmailProvider = VerifyEmailProvider;
  final count = 0.obs;
  String? thTitle;
  String? thTitleErrorMessage;
  final thList = [
    'นาย',
    'นาง',
    'นางสาว',
  ];
  String? engTitle;
  String? engTitleErrorMessage;
  final engList = [
    'Mr.',
    'Mrs.',
    'Ms.',
  ];

  String? thName;
  String? thNameErrorMessage;
  String? thSurnameErrorMessage;
  String? thSurname;
  String? engName;
  String? engSurname;
  String? engNameErrorMessage;
  String? engSurnameErrorMessage;
  String? email;
  String? emailErrorMessage;
  String? mobile;
  String? mobileErrorMessage;
  String? agreementErrorMessage;
  bool? agreement = false;
  bool? agreementError = false;
  bool isRegisteredEmail = false;
  bool isRegisteredMobile = false;
  bool emailValidate = false;
  bool mobileValidate = false;

  String? engToTh(String? eng) {
    if (eng == null) return null;
    final index = engList.indexOf(eng);
    if (index >= 0) {
      log('eng: ${thList[index]}');
      return thList[index];
    }
    return null;
  }

  String? thToEng(String? th) {
    if (th == null) return null;
    final index = thList.indexOf(th);
    if (index >= 0) {
      log('th: ${engList[index]}');
      return engList[index];
    }
    return null;
  }

  void setThTitleName(value) async {
    if (thTitle == null) {
      thTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาไทย)';
    }
    if (thTitleErrorMessage != null) {
      thTitleErrorMessage = null;
      engTitleErrorMessage = null;
    }
    thTitle = value;
    engTitle = thToEng(value)!;
    await GetStorage().write('thTitle', thTitle);
    await GetStorage().write('engTitle', thTitle);
    update();
  }

  void setThName(value) async {
    if (value == null) {
      thNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาไทย)';
    }
    if (thNameErrorMessage != null) {
      thNameErrorMessage = null;
    }
    thName = value;
    await GetStorage().write('thName', thName);
    update();
  }

  void doThTitleIsNull() {
    if (thTitle == null) {
      thTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาไทย)';
    }
    update();
  }

  void doThNameIsNull() {
    if (thName == null) {
      thNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาไทย)';
    }
    update();
  }

  void doThSurnameIsNull() {
    if (thSurname == null) {
      thSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาไทย)';
    }
    update();
  }

  void doengTitleIsNull() {
    if (engTitle == null) {
      engTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาอังกฤษ)';
    }
    update();
  }

  void doengNameIsNull() {
    if (engName == null) {
      engNameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาอังกฤษ)';
    }
    update();
  }

  void domobileIsNull() {
    if (mobile == null) {
      mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์';
    }
    update();
  }

  void doemailIsNull() {
    if (email == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล';
    } else {
      getEmail(email ?? '');
    }
    log('is email regis: $isRegisteredEmail');
    update();
  }

  void doengSurnameIsNull() {
    if (engSurname == null) {
      engSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาอังกฤษ)';
    }
    update();
  }

  void setThSurname(value) async {
    if (value == null) {
      thSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาไทย)';
    }
    if (thSurnameErrorMessage != null) {
      thSurnameErrorMessage = null;
    }
    thSurname = value;
    await GetStorage().write('thSurname', thSurname);
    update();
  }

  void setEngName(value) async {
    if (value == null) {
      engNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาอังกฤษ)';
    }
    if (engNameErrorMessage != null) {
      engNameErrorMessage = null;
    }
    engName = value;
    await GetStorage().write('engName', engName);
    update();
  }

  void setEngSurname(value) async {
    if (value == null) {
      engSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาอังกฤษ)';
    }
    if (engSurnameErrorMessage != null) {
      engSurnameErrorMessage = null;
    }
    engSurname = value;
    await GetStorage().write('engSurname', engSurname);
    update();
  }

  void setEngTitleName(value) async {
    if (value == null) {
      engTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาอังกฤษ)';
    }
    if (engTitleErrorMessage != null) {
      engTitleErrorMessage = null;
      thTitleErrorMessage = null;
    }
    engTitle = value;
    thTitle = engToTh(value)!;
    await GetStorage().write('engTitle', engTitle);
    await GetStorage().write('thTitle', thTitle);
    update();
  }

  void verifyEmailFormat(value) async {
    if (value == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล';
    }
    if (emailErrorMessage != null) {
      emailErrorMessage = null;
    }
    if (!EmailValidator.validate(value)) {
      emailErrorMessage = 'กรุณาใส่อีเมลให้ถูกต้อง';
    } else {
      emailValidate = true;
      emailErrorMessage = null;
    }
    email = value;
    await GetStorage().write('email', email);
    update();
  }

  void verifyMobileFormat(value) async {
    if (value == null) {
      mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือ';
    }
    if (mobileErrorMessage != null) {
      emailErrorMessage = null;
    }
    if (value.startsWith('06') ||
        value.startsWith('08') ||
        value.startsWith('09')) {
      if (value.length != 10) {
        mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือให้ถูกต้อง';
      } else {
        mobileValidate = true;
        mobileErrorMessage = null;
      }
    } else {
      if (value.length != 9) {
        mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือให้ถูกต้อง';
      } else {
        mobileValidate = true;
        mobileErrorMessage = null;
      }
    }
    mobile = value;
    await GetStorage().write('mobile', mobile);
    update();
  }

  void checkAgreement(value) {
    if (mobile == null) {
      mobileErrorMessage = 'กรุณากรอกหมายเลยโทรศัพท์';
    } else {
      agreement = value;
      agreementError = false;
      agreementErrorMessage = null;
    }
    update();
  }

  void popupAgreement() {
    agreement = true;
    agreementError = false;
    agreementErrorMessage = null;
    update();
  }

  void getEmail(String? email) async {
    var r = await Get.find<VerifyEmailProvider>().getVerifyEmail(email);
    var regis = r.isRegisteredEmail;
    isRegisteredEmail = regis ?? false;
  }

  void getMobile(String? mobile) async {
    var r = await Get.find<VerifyMobileProvider>().getVerifyMobile(mobile);
    var regis = r?.isRegisteredMobileNo;
    isRegisteredMobile = regis ?? false;
    log('get mobile: $isRegisteredMobile');
    update();
  }

  bool nextButtonLoading = false;
  void startLoading() {
    nextButtonLoading = true;
    update();
  }

  void endLoading() {
    nextButtonLoading = false;
    update();
  }

  void nextButtonOnPress() async {
    startLoading();
    if (thTitle == null) {
      thTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาไทย)';
    }
    if (thName == null) {
      thNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาไทย)';
    }
    if (thSurname == null) {
      thSurnameErrorMessage = 'กรุณาใส่ชื่อสกุล (ภาษาไทย)';
    }
    if (engTitle == null) {
      engTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาอังกฤษ)';
    }
    if (engName == null) {
      engNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาอังกฤษ)';
    }
    if (engSurname == null) {
      engSurnameErrorMessage = 'กรุณาใส่ชื่อสกุล (ภาษาอังกฤษ)';
    }
    log('email: $email');
    if (email == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล์ (ภาษาไทย)';
    }
    if (mobile == null) {
      mobileErrorMessage = 'กรุณาใส่เบอร์โทรศัพท์ (ภาษาไทย)';
    }
    if (agreement == false) {
      agreementErrorMessage = 'กรุณากดยอมรับ (ภาษาไทย)';
      agreementError = true;
    }

    var e = await Get.find<VerifyEmailProvider>().getVerifyEmail(email);
    isRegisteredEmail = e.isRegisteredEmail ?? false;
    var m = await Get.find<VerifyMobileProvider>().getVerifyMobile(mobile);
    isRegisteredMobile = m?.isRegisteredMobileNo ?? false;
    if (isRegisteredEmail || isRegisteredMobile) {
      Get.toNamed('/verify-email-mobile');
      endLoading();
      return;
    }
    // log('thtitle: $thTitleErrorMessage');
    // log('thname: $thNameErrorMessage');
    // log('thsurname: $thSurnameErrorMessage');
    // log('entitle: $engTitleErrorMessage');
    // log('enname: $engNameErrorMessage');
    // log('ensurname: $engSurnameErrorMessage'); //
    // log('email: $emailErrorMessage');
    // log('mobile: $mobileErrorMessage');
    // log('agreement: $agreementErrorMessage');
    if (thTitleErrorMessage == null &&
        thNameErrorMessage == null &&
        thSurnameErrorMessage == null &&
        engTitleErrorMessage == null &&
        engNameErrorMessage == null &&
        engSurnameErrorMessage == null &&
        emailErrorMessage == null &&
        mobileErrorMessage == null &&
        agreementErrorMessage == null) {
      Get.toNamed("/idcard");
      endLoading();
      return;
    }
    endLoading();
    // update();
  }
}
