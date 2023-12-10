import 'dart:developer';

import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';
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

  MarriageStatueEnum? marriageStatusGroupValue;

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
    }
      datepicker = value;
    if (datepicker == null) {
      datepickerErrorMassage = 'กรุณาเลือกวันที่';
    } 
      _verifyDateFeild();
    update();
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
    update();
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
    update();
  }
  void checkValidateYear() {
    if (datepicker != null && monthpicker != null && yearpicker != null) {
    final birthDate = LocalDateTime.dateTime(DateTime(int.parse(yearpicker!), int.parse(monthpicker!), int.parse(datepicker!)));
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
    update();
  }

  void setCitizenID(value) {
    citizenID = value;
    update();
  }
}
