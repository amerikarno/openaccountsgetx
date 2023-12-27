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

  bool isSelectedCurrentAddress = false;
  bool isSelectedOfficeAddress = false;

  CurrentAddressEnum? currentAddressEnumGroupValue;
  String? currentAddressEnumGroupValueErrorMessage;

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

  String? investmentErrorMessage;

  OfficeAddressEnum? officeAddressEnumGroupValue;
  String? officeAddressEnumGroupValueErrorMessage;

  bool shortTermInvestment = false;
  bool longTermInvestment = false;
  bool taxesReduceInvestment = false;
  bool retirementInvestment = false;

  String? firstBankName;
  String? firstBankNameErrorMessage;
  List<String> firstBankNameItems = bankNameLists;

  String? firstBankBranch;
  String? firstBankBranchErrorMessage;
  List<String> firstBankBranchItems = bankBranchLists;

  String? firstBankAccount;
  String? firstBankAccountErrorMessage;

  SecondBookBankAddressEnum? secondBookBankAddressEnumGroupValue;
  String? secondBookBankAddressEnumGroupValueErrorMessage;

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
    if (registeredHouseNumber == null || registeredHouseNumber == '') {
      registeredHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    } else {
      registeredHouseNumberErrorMessage = null;
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
    if (registeredSubDistrictName == null || registeredSubDistrictName == '') {
      registeredSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    } else {
      registeredSubDistrictNameErrorMessage = null;
    }
    update();
  }

  void rdnOnChange(value) {
    registeredDistrictName = value;
    if (registeredDistrictName == null || registeredDistrictName == '') {
      registeredDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    } else {
      registeredDistrictNameErrorMessage = null;
    }
    update();
  }

  void rpnOnChange(value) {
    registeredProvinceName = value;
    if (registeredProvinceName == null || registeredProvinceName == '') {
      registeredProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    } else {
      registeredProvinceNameErrorMessage = null;
    }
    update();
  }

  void rzcOnChange(value) {
    registeredZipCode = value;
    if (registeredZipCode == null || registeredZipCode == '') {
      registeredZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    } else {
      registeredZipCodeErrorMessage = null;
    }
    update();
  }

  void rcnOnChange(value) {
    registeredCountry = value;
    if (registeredCountry == null || registeredCountry == '') {
      registeredCountryErrorMessage = 'กรุณากรอกประเทศ';
    } else {
      registeredCountryErrorMessage = null;
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
    if (currentHouseNumber == null || currentHouseNumber == '') {
      currentHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    } else {
      currentHouseNumberErrorMessage = null;
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
    if (currentSubDistrictName == null || currentSubDistrictName == '') {
      currentSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    } else {
      currentSubDistrictNameErrorMessage = null;
    }
    update();
  }

  void cdnOnChange(value) {
    currentDistrictName = value;
    if (currentDistrictName == null || currentDistrictName == "") {
      currentDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    } else {
      currentDistrictNameErrorMessage = null;
    }
    update();
  }

  void cpnOnChange(value) {
    currentProvinceName = value;
    if (currentProvinceName == null || currentProvinceName == '') {
      currentProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    } else {
      currentProvinceNameErrorMessage = null;
    }
    update();
  }

  void czcOnChange(value) {
    currentZipCode = value;
    if (currentZipCode == null || currentZipCode == '') {
      currentZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    } else {
      currentZipCodeErrorMessage = null;
    }
    update();
  }

  void ccnOnChange(value) {
    currentCountry = value;
    if (currentCountry == null || currentCountry == '') {
      currentCountryErrorMessage = 'กรุณากรอกประเทศ';
    } else {
      currentCountryErrorMessage = null;
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
    if (officeHouseNumber == null || officeHouseNumber == '') {
      officeHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    } else {
      officeHouseNumberErrorMessage = null;
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
    if (officeSubDistrictName == null || officeSubDistrictName == '') {
      officeSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    } else {
      officeSubDistrictNameErrorMessage = null;
    }
    update();
  }

  void odnOnChange(value) {
    officeDistrictName = value;
    if (officeDistrictName == null || officeDistrictName == '') {
      officeDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    } else {
      officeDistrictNameErrorMessage = null;
    }
    update();
  }

  void opnOnChange(value) {
    officeProvinceName = value;
    if (officeProvinceName == null || officeProvinceName == '') {
      officeProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    } else {
      officeProvinceNameErrorMessage = null;
    }
    update();
  }

  void ozcOnChange(value) {
    officeZipCode = value;
    if (officeZipCode == null || officeZipCode == '') {
      officeZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    } else {
      officeZipCodeErrorMessage = null;
    }
    update();
  }

  void ocnOnChange(value) {
    officeCountry = value;
    if (officeCountry == null || officeCountry == '') {
      officeCountryErrorMessage = 'กรุณากรอกประเทศ';
    } else {
      officeCountryErrorMessage = null;
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
    isSelectedCurrentAddress = true;
    log('current address: $currentAddressEnumGroupValue');
    update();
  }

  void setSourceOfIncome(value) {
    if (value == null) {
      sourceOfIncomeErrorMessage = 'กรุณาเลือกแหล่งที่มาของรายได้';
    } else {
      sourceOfIncome = value;
      sourceOfIncomeErrorMessage = null;
    }
    update();
  }

  void setoccupation(value) {
    if (value == null) {
      occupationErrorMessage = 'กรุณาเลือกอาชีพ';
    } else {
      occupation = value;
      occupationErrorMessage = null;
    }
    update();
  }

  void setofficeName(value) {
    if (value == null) {
      officeNameErrorMessage = 'กรุณากรอกชื่อบริษัท';
    } else {
      officeName = value;
      officeNameErrorMessage = null;
    }
    update();
  }

  void settypeOfBusiness(value) {
    if (value == null) {
      typeOfBusinessErrorMessage = 'กรุณาเลือกประเภทของธุรกิจ';
    } else {
      typeOfBusiness = value;
      typeOfBusinessErrorMessage = null;
    }
    update();
  }

  void setposition(value) {
    if (value == null) {
      positionErrorMessage = 'กรุณากรอกตำแหน่งงาน';
    } else {
      positionErrorMessage = null;
      position = value;
    }
    update();
  }

  void setsalary(value) {
    if (value == null) {
      salaryErrorMessage = 'กรุณาเลือกเงินเดือน';
    } else {
      salaryErrorMessage = null;
      salary = value;
    }
    update();
  }

  void setOfficeAddress(value) {
    officeAddressEnumGroupValue = value;
    if (officeAddressEnumGroupValue == null) {
      officeAddressEnumGroupValueErrorMessage = 'กรุณาเลือกที่ตั้งที่ทำงาน';
    } else {
      officeAddressEnumGroupValueErrorMessage = null;
    }
    log('current address: $officeAddressEnumGroupValue');
    update();
  }

  void checkshortTermInvestment(value) {
    if (value == null) {
      investmentErrorMessage = 'กรุณาเลือกวัตถุประสงค์ของการลงทุน';
    } else {
      investmentErrorMessage = null;
      shortTermInvestment = value;
    }
    update();
  }

  void checklongTermInvestment(value) {
    if (value == null) {
      investmentErrorMessage = 'กรุณาเลือกวัตถุประสงค์ของการลงทุน';
    } else {
      investmentErrorMessage = null;
      longTermInvestment = value;
    }
    update();
  }

  void checktaxesReduceInvestment(value) {
    if (value == null) {
      investmentErrorMessage = 'กรุณาเลือกวัตถุประสงค์ของการลงทุน';
    } else {
      investmentErrorMessage = null;
      taxesReduceInvestment = value;
    }
    update();
  }

  void checkretirementInvestment(value) {
    if (value == null) {
      investmentErrorMessage = 'กรุณาเลือกวัตถุประสงค์ของการลงทุน';
    } else {
      investmentErrorMessage = null;
      retirementInvestment = value;
    }
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
    } else {
      firstBankAccountErrorMessage = null;
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
    if (value == null) {
      secondBookBankAddressEnumGroupValueErrorMessage = 'กรุณาเลือก';
    } else {
      secondBookBankAddressEnumGroupValueErrorMessage = null;
      secondBookBankAddressEnumGroupValue = value;
    }
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
    } else {
      secondBankAccountErrorMessage = null;
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

  void previousButtonOnPress() {
    Get.toNamed("/idcard");
    update();
  }

  void nextButtonOnPress() {
    if (registeredHouseNumber == null) {
      registeredHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
    }
    if (registeredSubDistrictName == null) {
      registeredSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
    }
    if (registeredDistrictName == null) {
      registeredDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
    }
    if (registeredProvinceName == null) {
      registeredProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
    }
    if (registeredZipCode == null) {
      registeredZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
    }
    if (registeredCountry == null) {
      registeredCountryErrorMessage = 'กรุณากรอกประเทศ';
    }
    if (!isSelectedCurrentAddress) {
      currentAddressEnumGroupValueErrorMessage = 'กรุณาเลือกที่อยู่';
    }

    // validate current address
    if (currentAddressEnumGroupValue == CurrentAddressEnum.current) {
      if (currentHouseNumber == null) {
        currentHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
      }
      if (currentSubDistrictName == null) {
        currentSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
      }
      if (currentDistrictName == null) {
        currentDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
      }
      if (currentProvinceName == null) {
        currentProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
      }
      if (currentZipCode == null) {
        currentZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
      }
      if (currentCountry == null) {
        currentCountryErrorMessage = 'กรุณากรอกประเทศ';
      }
    }

    // validate office address
    if (!isSelectedOfficeAddress) {
      officeAddressEnumGroupValueErrorMessage = 'กรุณาเลือกที่อยู่';
    }
    if (officeAddressEnumGroupValue == OfficeAddressEnum.office) {
      if (officeHouseNumber == null) {
        officeHouseNumberErrorMessage = 'กรุณากรอกบ้านเลขที่';
      }
      if (officeSubDistrictName == null) {
        officeSubDistrictNameErrorMessage = 'กรุณากรอกแขวงตำบล';
      }
      if (officeDistrictName == null) {
        officeDistrictNameErrorMessage = 'กรุณากรอกเขตอำเภอ';
      }
      if (officeProvinceName == null) {
        officeProvinceNameErrorMessage = 'กรุณากรอกจังหวัด';
      }
      if (officeZipCode == null) {
        officeZipCodeErrorMessage = 'กรุณากรอกรหัสไปรษณีย์';
      }
      if (officeCountry == null) {
        officeCountryErrorMessage = 'กรุณากรอกประเทศ';
      }
    }

    if (sourceOfIncome == null) {
      sourceOfIncomeErrorMessage = 'กรุณาเลือกแหล่งที่มาของเงินลงทุน';
    }
    if (occupation == null) {
      occupationErrorMessage = 'กรุณาเลือกอาชีพ';
    }
    if (officeName == null) {
      officeNameErrorMessage = 'กรุณากรอกที่อยู่สถานที่ทำงาน';
    }
    if (typeOfBusiness == null) {
      typeOfBusinessErrorMessage = 'กรุณาเลือกประเภทธุรกิจ';
    }
    if (position == null) {
      positionErrorMessage = 'กรุณากรอกตำแหน่ง';
    }
    if (salary == null) {
      salaryErrorMessage = 'กรุณาเลือกรายได้';
    }

    if (!shortTermInvestment &&
        !longTermInvestment &&
        !taxesReduceInvestment &&
        !retirementInvestment) {
      investmentErrorMessage = 'กรุณาเลือกวัตถุประสงค์ของการลงทุน';
    }

    if (firstBankName == null) {
      firstBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
    }
    if (firstBankBranch == null) {
      firstBankBranchErrorMessage = 'กรุณาเลือกสาขา';
    }
    if (firstBankAccount == null) {
      firstBankAccountErrorMessage = 'กรุณาเลือกสาขา';
    }

    if (secondBookBankAddressEnumGroupValue == null) {
      secondBookBankAddressEnumGroupValueErrorMessage = 'กรุณาเลือก';
    }

    if (secondBookBankAddressEnumGroupValue == SecondBookBankAddressEnum.yes) {
      if (secondBankName == null) {
        secondBankNameErrorMessage = 'กรุณาเลือกธนาคาร';
      }
      if (secondBankBranch == null) {
        secondBankBranchErrorMessage = 'กรุณาเลือกสาขา';
      }
      if (secondBankAccount == null) {
        secondBankAccountErrorMessage = 'กรุณาเลือกสาขา';
      }
    }

    if (registeredHouseNumberErrorMessage == null &&
        registeredSubDistrictNameErrorMessage == null &&
        registeredDistrictNameErrorMessage == null &&
        registeredProvinceNameErrorMessage == null &&
        registeredCountryErrorMessage == null &&
        registeredZipCodeErrorMessage == null &&
        currentHouseNumberErrorMessage == null &&
        currentSubDistrictNameErrorMessage == null &&
        currentDistrictNameErrorMessage == null &&
        currentProvinceNameErrorMessage == null &&
        currentCountryErrorMessage == null &&
        currentZipCodeErrorMessage == null &&
        officeHouseNumberErrorMessage == null &&
        officeSubDistrictNameErrorMessage == null &&
        officeDistrictNameErrorMessage == null &&
        officeProvinceNameErrorMessage == null &&
        officeCountryErrorMessage == null &&
        officeZipCodeErrorMessage == null &&
        sourceOfIncomeErrorMessage == null &&
        occupationErrorMessage == null &&
        officeNameErrorMessage == null &&
        typeOfBusinessErrorMessage == null &&
        positionErrorMessage == null &&
        salaryErrorMessage == null &&
        firstBankNameErrorMessage == null &&
        firstBankBranchErrorMessage == null &&
        firstBankAccountErrorMessage == null &&
        secondBankNameErrorMessage == null &&
        secondBankBranchErrorMessage == null &&
        secondBankAccountErrorMessage == null &&
        (shortTermInvestment ||
            longTermInvestment ||
            taxesReduceInvestment ||
            retirementInvestment)) {
      Get.toNamed("/test");
    }
    update();
  }
}
