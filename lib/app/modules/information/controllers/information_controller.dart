import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/idcard.dart';
import 'package:openaccountsgetx/app/data/information.dart';

class InformationController extends GetxController {
  String? registeredHouseNumber;
  String? registeredVillageNumber;
  String? registeredVillageName;
  String? registeredSubStreetName;
  String? registeredStreetName;
  String? registeredSubDistrictName;
  String? registeredDistrictName;
  String? registeredProvinceName;
  String? registeredZipCode;
  String? registeredCountry;
  TextEditingController? registeredHouseNumberTextController;
  TextEditingController? registeredVillageNumberTextController;
  TextEditingController? registeredVillageNameTextController;
  TextEditingController? registeredSubStreetNameTextController;
  TextEditingController? registeredStreetNameTextController;
  TextEditingController? registeredSubDistrictNameTextController;
  TextEditingController? registeredDistrictNameTextController;
  TextEditingController? registeredProvinceNameTextController;
  TextEditingController? registeredZipCodeTextController;
  TextEditingController? registeredCountryTextController;
  String? registeredHouseNumberErrorMessage;
  String? registeredSubDistrictNameErrorMessage;
  String? registeredDistrictNameErrorMessage;
  String? registeredProvinceNameErrorMessage;
  String? registeredZipCodeErrorMessage;
  String? registeredCountryErrorMessage;

  String? currentHouseNumber;
  String? currentVillageNumber;
  String? currentVillageName;
  String? currentSubStreetName;
  String? currentStreetName;
  String? currentSubDistrictName;
  String? currentDistrictName;
  String? currentProvinceName;
  String? currentZipCode;
  String? currentCountry;
  TextEditingController? currentHouseNumberTextController;
  TextEditingController? currentVillageNumberTextController;
  TextEditingController? currentVillageNameTextController;
  TextEditingController? currentSubStreetNameTextController;
  TextEditingController? currentStreetNameTextController;
  TextEditingController? currentSubDistrictNameTextController;
  TextEditingController? currentDistrictNameTextController;
  TextEditingController? currentProvinceNameTextController;
  TextEditingController? currentZipCodeTextController;
  TextEditingController? currentCountryTextController;
  String? currentHouseNumberErrorMessage;
  String? currentSubDistrictNameErrorMessage;
  String? currentDistrictNameErrorMessage;
  String? currentProvinceNameErrorMessage;
  String? currentZipCodeErrorMessage;
  String? currentCountryErrorMessage;

  String? officeHouseNumber;
  String? officeVillageNumber;
  String? officeVillageName;
  String? officeSubStreetName;
  String? officeStreetName;
  String? officeSubDistrictName;
  String? officeDistrictName;
  String? officeProvinceName;
  String? officeZipCode;
  String? officeCountry;
  TextEditingController? officeHouseNumberTextController;
  TextEditingController? officeVillageNumberTextController;
  TextEditingController? officeVillageNameTextController;
  TextEditingController? officeSubStreetNameTextController;
  TextEditingController? officeStreetNameTextController;
  TextEditingController? officeSubDistrictNameTextController;
  TextEditingController? officeDistrictNameTextController;
  TextEditingController? officeProvinceNameTextController;
  TextEditingController? officeZipCodeTextController;
  TextEditingController? officeCountryTextController;
  String? officeHouseNumberErrorMessage;
  String? officeSubDistrictNameErrorMessage;
  String? officeDistrictNameErrorMessage;
  String? officeProvinceNameErrorMessage;
  String? officeZipCodeErrorMessage;
  String? officeCountryErrorMessage;

  CurrentAddressEnum? currentAddressEnumGroupValue;

  String? sourceOfIncome;
  String? sourceOfIncomeErrorMessage;
  List<String> sourceOfIncomeItems = sourceOfIncomeLists;

  String? occupation;
  String? occupationErrorMessage;
  List<String> occupationItems = occupationLists;

  String? officeName;
  String? officeNameErrorMessage;

  String? typeOfBusiness;
  String? typeOfBusinessErrorMessage;
  List<String> typeOfBusinessItems = typeOfBusinessLists;

  String? position;
  String? positionErrorMessage;

  String? salary;
  String? salaryErrorMessage;
  List<String> salaryItems = salaryLists;

  OfficeAddressEnum? officeAddressEnumGroupValue;

  bool? shortTermInvestment = false;
  bool? longTermInvestment = false;
  bool? taxesReduceInvestment = false;
  bool? retirementInvestment = false;

  String? firstBankName;
  String? firstBankNameErrorMessage;
  List<String> firstBankNameItems = bankNameLists;

  String? firstBankBranch;
  String? firstBankBranchErrorMessage;
  List<String> firstBankBranchItems = bankBranchLists;

  String? firstBankAccount;
  String? firstBankAccountErrorMessage;


  SecondBookBankAddressEnum? secondBookBankAddressEnumGroupValue;

String? secondBankName;
  String? secondBankNameErrorMessage;
  List<String> secondBankNameItems = bankNameLists;

  String? secondBankBranch;
  String? secondBankBranchErrorMessage;
  List<String> secondBankBranchItems = bankBranchLists;

  String? secondBankAccount;
  String? secondBankAccountErrorMessage;

  void rhOnChange(value) {
    registeredHouseNumber = value;
    if (registeredHouseNumberTextController == null) {
      registeredHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
    log('$registeredHouseNumber');
    update();
  }

  void rvOnChange(value) {
    registeredVillageNumber = value;
    update();
  }

  void rvnOnChange(value) {
    registeredVillageName = value;
    update();
  }

  void rssnOnChange(value) {
    registeredSubStreetName = value;
    update();
  }

  void rsnOnChange(value) {
    registeredStreetName = value;
    update();
  }

  void rsdnOnChange(value) {
    registeredSubDistrictName = value;
    if (registeredSubDistrictName == null) {
      registeredSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
    update();
  }

  void rdnOnChange(value) {
    registeredDistrictName = value;
    if (registeredDistrictName == null) {
      registeredDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
    update();
  }

  void rpnOnChange(value) {
    registeredProvinceName = value;
    if (registeredProvinceName == null) {
      registeredProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
    update();
  }

  void rzcOnChange(value) {
    registeredZipCode = value;
    if (registeredZipCode == null) {
      registeredZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
    update();
  }

  void rcnOnChange(value) {
    registeredCountry = value;
    if (registeredCountry == null) {
      registeredCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
    update();
  }

  void rhOnTap() {
    if (registeredHouseNumber == null) {
      registeredHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
  }

  void rsdnOnTap() {
    if (registeredSubDistrictName == null) {
      registeredSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
  }

  void rdnOnTap() {
    if (registeredDistrictName == null) {
      registeredDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
  }

  void rpnOnTap() {
    if (registeredProvinceName == null) {
      registeredProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
  }

  void rzcOnTap() {
    if (registeredZipCode == null) {
      registeredZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
  }

  void rcnOnTap() {
    if (registeredCountry == null) {
      registeredCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
  }

  void chOnChange(value) {
    currentHouseNumber = value;
    if (currentHouseNumber == null) {
      currentHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
    update();
  }

  void cvOnChange(value) {
    currentVillageNumber = value;
    update();
  }

  void cvnOnChange(value) {
    currentVillageName = value;
    update();
  }

  void cssnOnChange(value) {
    currentSubStreetName = value;
    update();
  }

  void csnOnChange(value) {
    currentStreetName = value;
    update();
  }

  void csdnOnChange(value) {
    currentSubDistrictName = value;
    if (currentSubDistrictName == null) {
      currentSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
    update();
  }

  void cdnOnChange(value) {
    currentDistrictName = value;
    if (currentDistrictName == null) {
      currentDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
    update();
  }

  void cpnOnChange(value) {
    currentProvinceName = value;
    if (currentProvinceName == null) {
      currentProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
    update();
  }

  void czcOnChange(value) {
    currentZipCode = value;
    if (currentZipCode == null) {
      currentZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
    update();
  }

  void ccnOnChange(value) {
    currentCountry = value;
    if (currentCountry == null) {
      currentCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
    update();
  }

  void chOnTap() {
    if (currentHouseNumber == null) {
      currentHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
  }

  void csdnOnTap() {
    if (currentSubDistrictName == null) {
      currentSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
  }

  void cdnOnTap() {
    if (currentDistrictName == null) {
      currentDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
  }

  void cpnOnTap() {
    if (currentProvinceName == null) {
      currentProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
  }

  void czcOnTap() {
    if (currentZipCode == null) {
      currentZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
  }

  void ccnOnTap() {
    if (currentCountry == null) {
      currentCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
  }

  void ohOnChange(value) {
    officeHouseNumber = value;
    if (officeHouseNumber == null) {
      officeHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
    update();
  }

  void ovOnChange(value) {
    officeVillageNumber = value;
    update();
  }

  void ovnOnChange(value) {
    officeVillageName = value;
    update();
  }

  void ossnOnChange(value) {
    officeSubStreetName = value;
    update();
  }

  void osnOnChange(value) {
    officeStreetName = value;
    update();
  }

  void osdnOnChange(value) {
    officeSubDistrictName = value;
    if (officeSubDistrictName == null) {
      officeSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
    update();
  }

  void odnOnChange(value) {
    officeDistrictName = value;
    if (officeDistrictName == null) {
      officeDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
    update();
  }

  void opnOnChange(value) {
    officeProvinceName = value;
    if (officeProvinceName == null) {
      officeProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
    update();
  }

  void ozcOnChange(value) {
    officeZipCode = value;
    if (officeZipCode == null) {
      officeZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
    update();
  }

  void ocnOnChange(value) {
    officeCountry = value;
    if (officeCountry == null) {
      officeCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
    update();
  }

  void ohOnTap() {
    if (officeHouseNumber == null) {
      officeHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
  }

  void osdnOnTap() {
    if (officeSubDistrictName == null) {
      officeSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
  }

  void odnOnTap() {
    if (officeDistrictName == null) {
      officeDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
  }

  void opnOnTap() {
    if (officeProvinceName == null) {
      officeProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
  }

  void ozcOnTap() {
    if (officeZipCode == null) {
      officeZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
  }

  void ocnOnTap() {
    if (officeCountry == null) {
      officeCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
  }

  void setCurrentAddress(value) {
    currentAddressEnumGroupValue = value;
    log('current address: $currentAddressEnumGroupValue');
    update();
  }

  void setSourceOfIncome(value) {
    if (value == null) {
      sourceOfIncomeErrorMessage = 'กรุณาเลือกแหล่งที่มาของรายได้';
    } else {
      sourceOfIncome = value;
    }
    update();
  }

  void setoccupation(value) {
    if (value == null) {
      occupationErrorMessage = 'กรุณาเลือกอาชีพ';
    } else {
      occupation = value;
    }
    update();
  }

  void setofficeName(value) {
    if (value == null) {
      officeNameErrorMessage = 'กรุณากรอกชื่อบริษัท';
    } else {
      officeName = value;
    }
    update();
  }

  void settypeOfBusiness(value) {
    if (value == null) {
      typeOfBusinessErrorMessage = 'กรุณาเลือกประเภทของธุรกิจ';
    } else {
      typeOfBusiness = value;
    }
    update();
  }

  void setposition(value) {
    if (value == null) {
      positionErrorMessage = 'กรุณากรอกตำแหน่งงาน';
    } else {
      position = value;
    }
    update();
  }

  void setsalary(value) {
    if (value == null) {
      salaryErrorMessage = 'กรุณาเลือกเงินเดือน';
    } else {
      salary = value;
    }
    update();
  }

  void setOfficeAddress(value) {
    officeAddressEnumGroupValue = value;
    log('current address: $officeAddressEnumGroupValue');
    update();
  }

  void checkshortTermInvestment(value) {
    shortTermInvestment = value;
    update();
  }

  void checklongTermInvestment(value) {
    longTermInvestment = value;
    update();
  }

  void checktaxesReduceInvestment(value) {
    taxesReduceInvestment = value;
    update();
  }

  void checkretirementInvestment(value) {
    retirementInvestment = value;
    update();
  }

  void setFirstBankName(value) {
    if (value == null) {
      firstBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
    } else {
      firstBankName = value;
      firstBankNameErrorMessage = null;
    }
    update();
  }
  void setFirstBankBranch(value) {
    if (value == null) {
      firstBankBranchErrorMessage = 'กรุณาเลือกสาขา';
    } else {
      firstBankBranch = value;
      firstBankBranchErrorMessage = null;
    }
    update();
  }
  void firstBankAccountOnChange(value) {
    firstBankAccount = value;
    if (firstBankAccount == null) {
      firstBankAccountErrorMessage = 'กรุณากรอกเลขบัญชี';
    }
    update();
  }

  void firstBankAccountOnTap() {
    if (firstBankName == null) {
      firstBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
    }
    if (firstBankBranch == null) {
      firstBankBranchErrorMessage = 'กรุณาเลือกสาขา';
    }
    update();
  }

  void setUseSecondBookBank(value) {
    secondBookBankAddressEnumGroupValue = value;
    log('current address: $secondBookBankAddressEnumGroupValue');
    update();
  }

  void setsecondBankName(value) {
    if (value == null) {
      secondBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
    } else {
      secondBankName = value;
      secondBankNameErrorMessage = null;
    }
    update();
  }
  void setsecondBankBranch(value) {
    if (value == null) {
      secondBankBranchErrorMessage = 'กรุณาเลือกสาขา';
    } else {
      secondBankBranch = value;
      secondBankBranchErrorMessage = null;
    }
    update();
  }
  void secondBankAccountOnChange(value) {
    secondBankAccount = value;
    if (secondBankAccount == null) {
      secondBankAccountErrorMessage = 'กรุณากรอกเลขบัญชี';
    }
    update();
  }

  void secondBankAccountOnTap() {
    if (secondBankName == null) {
      secondBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
    }
    if (secondBankBranch == null) {
      secondBankBranchErrorMessage = 'กรุณาเลือกสาขา';
    }
    update();
  }
}
