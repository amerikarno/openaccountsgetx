import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/home/providers/verify_email_provider.dart';

class HomeController extends GetxController {
  VerifyEmailProvider? verifyEmailProvider;
  HomeController();

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
  bool? isRegisteredEmail = false;
  bool? isRegisteredMobile = false;

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

  void setThTitleName(value) {
    if (thTitle == null) {
      thTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาไทย)';
    }
    if (thTitleErrorMessage != null) {
      thTitleErrorMessage = null;
      engTitleErrorMessage = null;
    }
    thTitle = value;
    engTitle = thToEng(value)!;
    update();
  }

  void setThName(value) {
    if (value == null) {
      thNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาไทย)';
    }
    if (thNameErrorMessage != null) {
      thNameErrorMessage = null;
    }
    thName = value;
    log('$thName: $value');
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

  void setThSurname(value) {
    if (value == null) {
      thSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาไทย)';
    }
    if (thSurnameErrorMessage != null) {
      thSurnameErrorMessage = null;
    }
    thSurname = value;
    update();
  }

  void setEngName(value) {
    if (value == null) {
      engNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาอังกฤษ)';
    }
    if (engNameErrorMessage != null) {
      engNameErrorMessage = null;
    }
    engName = value;
    update();
  }

  void setEngSurname(value) {
    if (value == null) {
      engSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาอังกฤษ)';
    }
    if (engSurnameErrorMessage != null) {
      engSurnameErrorMessage = null;
    }
    engSurname = value;
    update();
  }

  void setEngTitleName(value) {
    if (value == null) {
      engTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาอังกฤษ)';
    }
    if (engTitleErrorMessage != null) {
      engTitleErrorMessage = null;
      thTitleErrorMessage = null;
    }
    engTitle = value;
    thTitle = engToTh(value)!;
    update();
  }

  void verifyEmailFormat(value) {
    if (value == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล';
    }
    if (emailErrorMessage != null) {
      emailErrorMessage = null;
    }
    if (!EmailValidator.validate(value)) {
      emailErrorMessage = 'กรุณาใส่อีเมลให้ถูกต้อง';
    } else {
      emailErrorMessage = null;
    }
    email = value;
    update();
  }

  void verifyMobileFormat(value) {
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
        mobileErrorMessage = null;
      }
    } else {
      if (value.length != 9) {
        mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือให้ถูกต้อง';
      } else {
        mobileErrorMessage = null;
      }
    }
    mobile = value;
    update();
  }

  void checkAgreement(value) {
    if (mobile == null) {
      mobileErrorMessage = 'กรุณากรอกหมายเลยโทรศัพท์';
    } else {
      agreement = value;
      agreementError = false;
    }
    update();
  }

  void popupAgreement() {
    agreement = true;
    agreementError = false;
    update();
  }

  void nextButtonOnPress() {
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
    if (email == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล์ (ภาษาไทย)';
    }
    if (mobile == null) {
      mobileErrorMessage = 'กรุณาใส่เบอร์โทรศัพท์ (ภาษาไทย)';
    }
    if (agreement == false) {
      agreementErrorMessage = 'กรุณายอมรับ (ภาษาไทย)';
      agreementError = true;
    }

    if (thTitleErrorMessage == null ||
        thNameErrorMessage == null ||
        thSurnameErrorMessage == null ||
        engTitleErrorMessage == null ||
        engNameErrorMessage == null ||
        engSurnameErrorMessage == null ||
        emailErrorMessage == null ||
        mobileErrorMessage == null ||
        agreementErrorMessage == null) {
      Get.toNamed("/idcard");
    }
    update();
  }

  void getEmail(String email) {
    verifyEmailProvider?.getVerifyEmail(email);
  }
}
