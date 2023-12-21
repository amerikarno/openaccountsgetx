import 'dart:developer';

import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';
import 'package:openaccountsgetx/app/modules/idcard/providers/verify_idcard_provider.dart';
import 'package:openaccountsgetx/app/modules/idcard/scripts/citizen_id_checker.dart';
import 'package:time_machine/time_machine.dart';

class IdcardController extends GetxController {
  String? datepicker;
  String? datepickerErrorMassage;
  List<String> dateItems = dateLists;
  String? monthpicker;
  String? monthpickerErrorMassage;
  List<String> monthItems = monthLists;
  String? yearpicker;
  String? yearpickerErrorMassage;
  List<String>? yearItems;
  String? citizenID;
  String? citizenIDErrorMassage;
  bool citizenIDValidate = false;

  MarriageStatueEnum? marriageStatusGroupValue;
  String? merriageStatusErrorMessage;
  bool merriageStatusNull = false;

  String? laserPrefix;
  String? laserPrefixErrorMassage;

  String? laserSuffix;
  String? laserSuffixErrorMassage;

  void createYearLists() {
    int currentYear = DateTime.now().year + 543;
    int start = currentYear - 20;
    int end = currentYear - 100;
    List<String> list = [];
    for (var i = start; i >= end; i--) {
      list.add(i.toString());
    }
    yearItems = list;
  }

  void _verifyDateFeild() {
    dateItems = dateLists;
    final remainder = int.parse(yearpicker ?? '2500') % 4;
    final dateInt = int.parse(datepicker ?? '1');
    log('date: $dateInt, month: $monthpicker, year: $yearpicker', name: 'info');
    switch (monthpicker) {
      case 'ก.พ.':
        if (dateInt >= 29) {
          if (remainder == 3) {
            datepicker = '29';
            dateItems.length = 29;
          } else {
            datepicker = '28';
            dateItems.length = 28;
          }
        } else {
          if (remainder == 3) {
            dateItems.length = 29;
          } else {
            dateItems.length = 28;
          }
        }
      case 'เม.ย.':
      case 'มิ.ย.':
      case 'ก.ย.':
      case 'พ.ย.':
        if (dateInt >= 31) {
          datepicker = '30';
          dateItems.length = 30;
        } else {
          dateItems.length = 30;
        }
      default:
        dateItems = dateLists;
    }
  }

  void setDatePicker(value) {
    if (datepicker != null) {
      datepicker = null;
      datepickerErrorMassage = null;
    }
    datepicker = value;
    if (datepicker == null) {
      datepickerErrorMassage = 'กรุณาเลือกวันที่';
    }
    _verifyDateFeild();
    isDateOfBirthIsNull();
    update();
  }

  void isDateOfBirthIsNull() {
    if (datepicker == null) {
      datepickerErrorMassage = 'กรุณาเลือกวันที่';
    } else {
      datepickerErrorMassage = null;
    }
  }

  void setMonthPicker(value) {
    if (monthpicker != null) {
      monthpicker = null;
    }
    monthpicker = value;
    _verifyDateFeild();
    if (monthpicker == null) {
      monthpickerErrorMassage = 'กรุณาเลือกเดือน';
    }
    isMonthOfBirthIsNull();
    update();
  }

  void isMonthOfBirthIsNull() {
    if (monthpicker == null) {
      monthpickerErrorMassage = 'กรุณาเลือกเดือน';
    } else {
      monthpickerErrorMassage = null;
    }
  }

  void setYearPicker(value) {
    if (yearpicker != null) {
      yearpicker = null;
    }
    yearpicker = value;
    _verifyDateFeild();
    if (yearpicker == null) {
      yearpickerErrorMassage = 'กรุณาเลือกปี(พ.ศ.)';
    }
    isYearOfBirthIsNull();
    update();
  }

  void isYearOfBirthIsNull() {
    if (yearpicker == null) {
      yearpickerErrorMassage = 'กรุณาเลือกปี(พ.ศ.)';
    } else {
      yearpickerErrorMassage = null;
    }
  }

  void checkValidateYear() {
    if (datepicker != null && monthpicker != null && yearpicker != null) {
      final birthDate = LocalDateTime.dateTime(DateTime(int.parse(yearpicker!),
          int.parse(monthpicker!), int.parse(datepicker!)));
      final now = LocalDateTime.now();
      final diffDay = now.periodSince(birthDate);
      if (diffDay.years < 20) {
        yearpickerErrorMassage = 'อายุน้อยกว่า 20 ปี';
      }
      log('now: $now, birth day: $birthDate');
    }
    update();
  }

  void setMarriageStatus(value) {
    marriageStatusGroupValue = value;
    log('mirriage status: $marriageStatusGroupValue');
    isYearOfBirthIsNull();
    isMarriageStatusIsNull();
    update();
  }

  void isMarriageStatusIsNull() {
    if (marriageStatusGroupValue == null) {
      merriageStatusNull = true;
      merriageStatusErrorMessage = 'กรุณาเลือกสถานะ';
    } else {
      merriageStatusNull = false;
      merriageStatusErrorMessage = null;
    }
    update();
  }

  void setCitizenID(value) {
    var thaiIDValidator = ThaiIdValidator();
    citizenIDValidate = thaiIDValidator.validate(value);
    if (citizenIDValidate) {
      citizenID = value;
    }
    isCitizendIDIsNull();
    update();
  }

  void setLaserPrefix(value) {
    if (value.length != 2) {
      laserPrefixErrorMassage = 'กรุณากรอกให้ถูกต้อง';
    } else {
      laserPrefixErrorMassage = null;
      laserPrefix = value;
    }
    islaserPrefixIsNull();
    update();
  }

  void setLaserSuffix(value) {
    if (value.length != 10) {
      laserSuffixErrorMassage = 'กรุณากรอกให้ถูกต้อง';
    } else {
      laserSuffixErrorMassage = null;
      laserSuffix = value;
    }
    islaserSuffixIsNull();
    update();
  }

  void isCitizendIDIsNull() {
    if (citizenID == null) {
      citizenIDErrorMassage = 'กรุณากรอกเลขบัตรประชาชน';
    } else {
      citizenIDErrorMassage = null;
    }
    update();
  }

  void islaserPrefixIsNull() {
    if (laserPrefix == null) {
      laserPrefixErrorMassage = 'กรุณากรอกตัวอักษร';
    } else {
      laserPrefixErrorMassage = null;
    }
    update();
  }

  void islaserSuffixIsNull() {
    if (laserSuffix == null) {
      laserSuffixErrorMassage = 'กรุณากรอกตัวเลข';
    } else {
      laserSuffixErrorMassage = null;
    }
    update();
  }

  void previousButtonOnPress() {
    Get.toNamed("/home");
    update();
  }

  bool isRegisteredID = false;

  void nextButtonOnPress() async {
    isDateOfBirthIsNull();
    isMonthOfBirthIsNull();
    isYearOfBirthIsNull();
    isMarriageStatusIsNull();
    isCitizendIDIsNull();
    islaserPrefixIsNull();
    islaserSuffixIsNull();

    var id =
        await Get.find<VerifyIdcardProvider>().getVerifyIdcard(citizenID ?? '');
    isRegisteredID = id?.isRegisteredIDCard ?? false;

    if (isRegisteredID) {
      Get.toNamed('/verify-email-mobile');
      // endLoading();
      return;
    }

    if (datepickerErrorMassage == null &&
        monthpickerErrorMassage == null &&
        yearpickerErrorMassage == null &&
        merriageStatusErrorMessage == null &&
        citizenIDErrorMassage == null &&
        laserPrefixErrorMassage == null &&
        laserSuffixErrorMassage == null) {
      Get.toNamed("/information");
      return;
    }
    return;
    // update();
  }
}
