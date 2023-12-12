import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/test.dart';

class TestController extends GetxController {
  String? selectSuitableTest;
  String? selectSuitableTestErrorMessage;
  List<String> selectSuitableTestItems = selectSuitableTestLists;
  bool isSelectSuitableTest = false;
  int suiteSumPoints  = 0;

  suiteAnswerEnum? firstSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? secondSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? thirdSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? forthSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? fifthSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? sixthSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? seventhSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? eiththSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? ninthSuiteAnswerEnumEnumGroupValue;
  suiteAnswerEnum? tenthSuiteAnswerEnumEnumGroupValue;

  void setselectSuitableTestLists(value) {
    selectSuitableTest = value;
    if (selectSuitableTest == selectSuitableTestItems[0]) {
      firstSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      secondSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      thirdSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      forthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      fifthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      sixthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      seventhSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      eiththSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      ninthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
      tenthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
    }
    if (selectSuitableTest == selectSuitableTestItems[1]) {
      firstSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      secondSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      thirdSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      forthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      fifthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      sixthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      seventhSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      eiththSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      ninthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
      tenthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.second;
    }
    if (selectSuitableTest == selectSuitableTestItems[2]) {
      firstSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      secondSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      thirdSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      forthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      fifthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      sixthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      seventhSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      eiththSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      ninthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      tenthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.first;
    }
    if (selectSuitableTest == selectSuitableTestItems[3]) {
      firstSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      secondSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      thirdSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      forthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      fifthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      sixthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      seventhSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      eiththSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      ninthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
      tenthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.third;
    }
    if (selectSuitableTest == selectSuitableTestItems[4]) {
      firstSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      secondSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      thirdSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      forthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      fifthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      sixthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      seventhSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      eiththSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      ninthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
      tenthSuiteAnswerEnumEnumGroupValue = suiteAnswerEnum.forth;
    }
    update();
  }

  void setselectSuitableTestOnPress() {
    isSelectSuitableTest = !isSelectSuitableTest;
    update();
  }

  void setfirstSuiteAnswerEnumEnumGroupValue(value) {
    firstSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setsecondSuiteAnswerEnumEnumGroupValue(value) {
    secondSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setthirdSuiteAnswerEnumEnumGroupValue(value) {
    thirdSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setforthSuiteAnswerEnumEnumGroupValue(value) {
    forthSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setfifthSuiteAnswerEnumEnumGroupValue(value) {
    fifthSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setsixthSuiteAnswerEnumEnumGroupValue(value) {
    sixthSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setseventhSuiteAnswerEnumEnumGroupValue(value) {
    seventhSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void seteiththSuiteAnswerEnumEnumGroupValue(value) {
    eiththSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void setninthSuiteAnswerEnumEnumGroupValue(value) {
    ninthSuiteAnswerEnumEnumGroupValue = value;
    update();
  }
  void settenthSuiteAnswerEnumEnumGroupValue(value) {
    tenthSuiteAnswerEnumEnumGroupValue = value;
    update();
  }

    double convertAnserEnumToInt(suiteAnswerEnum? enumPoint) {
    if (enumPoint != null) {
      if (enumPoint == suiteAnswerEnum.first) {
        return 1;
      }
      if (enumPoint == suiteAnswerEnum.second) {
        return 2;
      }
      if (enumPoint == suiteAnswerEnum.third) {
        return 3;
      }
      if (enumPoint == suiteAnswerEnum.forth) {
        return 4;
      }
    }
    return 0;
  }
}
