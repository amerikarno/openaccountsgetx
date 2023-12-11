import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
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
  bool? agreement = false;

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

  void increment() => count.value++;
  void setThTitleName(value) {
    if (thTitle == null) {
      thTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาไทย)';
    }
    thTitle = value;
    engTitle = thToEng(value)!;
    update();
  }

  void setThName(value) {
    if (value == null) {
      thNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาไทย)';
    }
    thName = value;
    log('$thName: $value');
    update();
  }

  void setThSurname(value) {
    if (value.isBlank) {
      thSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาไทย)';
    }
    thSurname = value;
    update();
  }

  void setEngName(value) {
    if (value.isBlank) {
      engNameErrorMessage = 'กรุณาใส่ชื่อ (ภาษาอังกฤษ)';
    }
    engName = value;
    update();
  }

  void setEngSurname(value) {
    if (value.isBlank) {
      engSurnameErrorMessage = 'กรุณาใส่นามสกุล (ภาษาอังกฤษ)';
    }
    engSurname = value;
    update();
  }

  void setEngTitleName(value) {
    if (engTitle == null) {
      engTitleErrorMessage = 'กรุณาใส่คำนำหน้าชื่อ (ภาษาอังกฤษ)';
    }
    engTitle = value;
    thTitle = engToTh(value)!;
    update();
  }

  void verifyEmailFormat(value) {
    if (engTitle == null) {
      emailErrorMessage = 'กรุณาใส่อีเมล';
    }
    if (!EmailValidator.validate(value)) {
      emailErrorMessage = 'กรุณาใส่อีเมลให้ถูกต้อง';
    }
    email = value;
    update();
  }

  void verifyMobileFormat(value) {
    if (engTitle == null) {
      mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือ';
    }
    if (value.startsWith('06') ||
        value.startsWith('08') ||
        value.startsWith('09')) {
      if (value.length != 10) {
        mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือให้ถูกต้อง';
      }
    } else {
      if (value.length != 9) {
        mobileErrorMessage = 'กรุณาใส่หมายเลขโทรศัพท์มือถือให้ถูกต้อง';
      }
    }
    engTitle = value;
    update();
  }

  void checkAgreement(value) {
    agreement = value;
    update();
  }
  void popupAgreement() {
    agreement = true;
    update();
  }
}
