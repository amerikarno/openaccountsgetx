import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/test.dart';
import 'package:openaccountsgetx/app/modules/test/views/knowledge_test_view.dart';

class TestController extends GetxController {
  String? selectSuitableTest;
  String? selectSuitableTestErrorMessage;
  List<String> selectSuitableTestItems = selectSuitableTestLists;
  bool isSelectSuitableTest = false;
  double suiteSumPoints = 0;
  bool isCompleteTestSuiteWhenPressButton = false;
  String? investerType;
  String? digitatAssetInvestmentRatios;

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

  fatcaEnum? fatcaEnumGroupValue;
  bool? americanChecklist = false;
  bool? greenCardCheckList = false;
  bool? addressInAmericaCheckList = false;
  bool? bornInAmericaCheckList = false;
  bool? addressInAmericaOpenAccountCheckList = false;
  bool? americaMobileNumberCheckList = false;
  bool? americaBankAccountCheckList = false;
  bool? authorityInAmericaCheckList = false;

  knowledgeTestEnum? knowledgeTestEnumGroupValue;

  knowledgeAnswerEnum? firstknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? secondknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? thirdknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? forthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? fifthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? sixthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? seventhknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? eigththknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? ninthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? tenthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? eleventhknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? twelthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? thirteenthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? forteenthknowledgeAnswerEnumEnumGroupValue;
  knowledgeAnswerEnum? fifteenthknowledgeAnswerEnumEnumGroupValue;

  bool hintFirstKnowledgeQuestion = false;
  bool hintSecondKnowledgeQuestion = false;
  bool hintThirdKnowledgeQuestion = false;
  bool hintForthKnowledgeQuestion = false;
  bool hintFifthKnowledgeQuestion = false;
  bool hintSixthKnowledgeQuestion = false;
  bool hintSeventhKnowledgeQuestion = false;
  bool hintEighthKnowledgeQuestion = false;
  bool hintNinthKnowledgeQuestion = false;
  bool hintTenthKnowledgeQuestion = false;
  bool hintEleventhKnowledgeQuestion = false;
  bool hintTwelthKnowledgeQuestion = false;
  bool hintThirteenthKnowledgeQuestion = false;
  bool hintForteenthKnowledgeQuestion = false;
  bool hintFifteenthKnowledgeQuestion = false;

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
      suiteSumPoints = 10;
      investerType = selectSuitableTestLists[0];
      digitatAssetInvestmentRatios = '<5%';
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
      suiteSumPoints = 20;
      investerType = selectSuitableTestLists[1];
      digitatAssetInvestmentRatios = '<10%';
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
      suiteSumPoints = 28;
      investerType = selectSuitableTestLists[2];
      digitatAssetInvestmentRatios = '<10%';
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
      suiteSumPoints = 30;
      investerType = selectSuitableTestLists[3];
      digitatAssetInvestmentRatios = '<20%';
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
      suiteSumPoints = 40;
      investerType = selectSuitableTestLists[4];
      digitatAssetInvestmentRatios = '<30%';
    }
    log('sum points: $suiteSumPoints');
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

  void setsuiteTestTextButtonOnPress(BuildContext context) {
    if (firstSuiteAnswerEnumEnumGroupValue == null ||
        secondSuiteAnswerEnumEnumGroupValue == null ||
        thirdSuiteAnswerEnumEnumGroupValue == null ||
        forthSuiteAnswerEnumEnumGroupValue == null ||
        fifthSuiteAnswerEnumEnumGroupValue == null ||
        sixthSuiteAnswerEnumEnumGroupValue == null ||
        seventhSuiteAnswerEnumEnumGroupValue == null ||
        eiththSuiteAnswerEnumEnumGroupValue == null ||
        ninthSuiteAnswerEnumEnumGroupValue == null ||
        tenthSuiteAnswerEnumEnumGroupValue == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text(
                'รบกวนทำให้ครบทุกข้อ',
                style: TextStyle(color: Colors.red),
              ),
            );
          });
    } else {
      suiteSumPoints =
          convertAnserEnumToInt(firstSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(secondSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(thirdSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(forthSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(fifthSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(sixthSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(seventhSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(eiththSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(ninthSuiteAnswerEnumEnumGroupValue) +
              convertAnserEnumToInt(tenthSuiteAnswerEnumEnumGroupValue);
      isSelectSuitableTest = false;
      log('Suitable Test Total: $suiteSumPoints');
    }
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

  Widget setsuiteTestOnGetText() => Text(
        '${suiteSumPoints.toInt()}',
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      );
  void setInvestmentType() {
    if (suiteSumPoints < 15) {
      investerType = selectSuitableTestLists[0];
      digitatAssetInvestmentRatios = '<5%';
    }
    if (suiteSumPoints >= 15 && suiteSumPoints <= 21) {
      investerType = selectSuitableTestLists[1];
      digitatAssetInvestmentRatios = '<10%';
    }
    if (suiteSumPoints >= 22 && suiteSumPoints <= 29) {
      investerType = selectSuitableTestLists[2];
      digitatAssetInvestmentRatios = '<10%';
    }
    if (suiteSumPoints >= 30 && suiteSumPoints <= 36) {
      investerType = selectSuitableTestLists[3];
      digitatAssetInvestmentRatios = '<20%';
    }
    if (suiteSumPoints >= 37) {
      investerType = selectSuitableTestLists[4];
      digitatAssetInvestmentRatios = '<30%';
    }
    update();
  }

  void setfatca(value) {
    fatcaEnumGroupValue = value;
    update();
  }

  void checkamericanCheckList(value) {
    americanChecklist = value;
    update();
  }

  void checkgreenCardCheckList(value) {
    greenCardCheckList = value;
    update();
  }

  void checkaddressInAmericaCheckList(value) {
    addressInAmericaCheckList = value;
    update();
  }

  void checkbornInAmericaCheckList(value) {
    bornInAmericaCheckList = value;
    log('bornInAmericaCheckList: $bornInAmericaCheckList');
    update();
  }

  void checkaddressInAmericaOpenAccountCheckList(value) {
    addressInAmericaOpenAccountCheckList = value;
    update();
  }

  void checkamericaMobileNumberCheckList(value) {
    americaMobileNumberCheckList = value;
    update();
  }

  void checkamericaBankAccountCheckList(value) {
    americaBankAccountCheckList = value;
    update();
  }

  void checkauthorityInAmericaCheckList(value) {
    authorityInAmericaCheckList = value;
    update();
  }

  void setfatcaTextButtonOnPress(BuildContext context) {
    log('born in america: $bornInAmericaCheckList');
    if (americanChecklist == true ||
        greenCardCheckList == true ||
        addressInAmericaCheckList == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
                title:
                    Text('W9 contract', style: TextStyle(color: Colors.red)));
          });
    } else if (bornInAmericaCheckList == true ||
        addressInAmericaOpenAccountCheckList == true ||
        americaMobileNumberCheckList == true ||
        americaBankAccountCheckList == true ||
        authorityInAmericaCheckList == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
                title:
                    Text('W8 contract', style: TextStyle(color: Colors.red)));
          });
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
                title: Text('กรุณาเลือก FATCA',
                    style: TextStyle(color: Colors.red)));
          });
    }
    update();
  }

  void setknowledgeTest(value) {
    knowledgeTestEnumGroupValue = value;
    update();
  }

  void setdoKnowledgeTestNowListTile(
      BuildContext context, List<Widget> contents) {
    Get.defaultDialog(
        title: 'Knowledge Test',
        content: Flexible(
          child: SingleChildScrollView(child: KnowledgeTestView(widgets: contents)),
        ));
    update();
  }

  void setfirstknowledgeAnswerEnumEnumGroupValue(value) {
    firstknowledgeAnswerEnumEnumGroupValue = value;
    log("first knowledge answer enum group value = $firstknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setsecondknowledgeAnswerEnumEnumGroupValue(value) {
    secondknowledgeAnswerEnumEnumGroupValue = value;
    log("second knowledge answer enum group value = $secondknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setthirdknowledgeAnswerEnumEnumGroupValue(value) {
    thirdknowledgeAnswerEnumEnumGroupValue = value;
    log("third knowledge answer enum group value = $thirdknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setforthknowledgeAnswerEnumEnumGroupValue(value) {
    forthknowledgeAnswerEnumEnumGroupValue = value;
    log("forth knowledge answer enum group value = $forthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setfifthknowledgeAnswerEnumEnumGroupValue(value) {
    fifthknowledgeAnswerEnumEnumGroupValue = value;
    log("fifth knowledge answer enum group value = $fifthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setsixthknowledgeAnswerEnumEnumGroupValue(value) {
    sixthknowledgeAnswerEnumEnumGroupValue = value;
    log("sixth knowledge answer enum group value = $sixthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setseventhknowledgeAnswerEnumEnumGroupValue(value) {
    seventhknowledgeAnswerEnumEnumGroupValue = value;
    log("seventh knowledge answer enum group value = $seventhknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void seteigththknowledgeAnswerEnumEnumGroupValue(value) {
    eigththknowledgeAnswerEnumEnumGroupValue = value;
    log("eigthth knowledge answer enum group value = $eigththknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setninthknowledgeAnswerEnumEnumGroupValue(value) {
    ninthknowledgeAnswerEnumEnumGroupValue = value;
    log("ninth knowledge answer enum group value = $ninthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void settenthknowledgeAnswerEnumEnumGroupValue(value) {
    tenthknowledgeAnswerEnumEnumGroupValue = value;
    log("tenth knowledge answer enum group value = $tenthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void seteleventhknowledgeAnswerEnumEnumGroupValue(value) {
    eleventhknowledgeAnswerEnumEnumGroupValue = value;
    log("eleventh knowledge answer enum group value = $eleventhknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void settwelthknowledgeAnswerEnumEnumGroupValue(value) {
    twelthknowledgeAnswerEnumEnumGroupValue = value;
    log("twelth knowledge answer enum group value = $twelthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setthirteenthknowledgeAnswerEnumEnumGroupValue(value) {
    thirteenthknowledgeAnswerEnumEnumGroupValue = value;
    log("thirteenth knowledge answer enum group value = $thirteenthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setforteenthknowledgeAnswerEnumEnumGroupValue(value) {
    forteenthknowledgeAnswerEnumEnumGroupValue = value;
    log("forteenth knowledge answer enum group value = $forteenthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setfifteenthknowledgeAnswerEnumEnumGroupValue(value) {
    fifteenthknowledgeAnswerEnumEnumGroupValue = value;
    log("fifteenth knowledge answer enum group value = $fifteenthknowledgeAnswerEnumEnumGroupValue");
    update();
  }

  void setknowledgeTestTextButtonOnPress(BuildContext context) {
    if (firstknowledgeAnswerEnumEnumGroupValue == null ||
        secondknowledgeAnswerEnumEnumGroupValue == null ||
        thirdknowledgeAnswerEnumEnumGroupValue == null ||
        forthknowledgeAnswerEnumEnumGroupValue == null ||
        fifthknowledgeAnswerEnumEnumGroupValue == null ||
        sixthknowledgeAnswerEnumEnumGroupValue == null ||
        seventhknowledgeAnswerEnumEnumGroupValue == null ||
        eigththknowledgeAnswerEnumEnumGroupValue == null ||
        ninthknowledgeAnswerEnumEnumGroupValue == null ||
        tenthSuiteAnswerEnumEnumGroupValue == null ||
        eleventhknowledgeAnswerEnumEnumGroupValue == null ||
        twelthknowledgeAnswerEnumEnumGroupValue == null ||
        thirteenthknowledgeAnswerEnumEnumGroupValue == null ||
        forteenthknowledgeAnswerEnumEnumGroupValue == null ||
        fifteenthknowledgeAnswerEnumEnumGroupValue == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text(
                'รบกวนทำให้ครบทุกข้อ',
                style: TextStyle(color: Colors.red),
              ),
            );
          });
    } else {
      if (firstknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.no) {
        hintFirstKnowledgeQuestion = true;
      } else {
        hintFirstKnowledgeQuestion = false;
      }
      if (secondknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintSecondKnowledgeQuestion = true;
      } else {
        hintSecondKnowledgeQuestion = false;
      }
      if (thirdknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintThirdKnowledgeQuestion = true;
      } else {
        hintThirdKnowledgeQuestion = false;
      }
      if (forthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintForthKnowledgeQuestion = true;
      } else {
        hintForthKnowledgeQuestion = false;
      }
      if (fifthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.no) {
        hintFifthKnowledgeQuestion = true;
      } else {
        hintFifthKnowledgeQuestion = false;
      }
      if (sixthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.no) {
        hintSixthKnowledgeQuestion = true;
      } else {
        hintSixthKnowledgeQuestion = false;
      }
      if (seventhknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.no) {
        hintSeventhKnowledgeQuestion = true;
      } else {
        hintSeventhKnowledgeQuestion = false;
      }
      if (eigththknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintEighthKnowledgeQuestion = true;
      } else {
        hintEighthKnowledgeQuestion = false;
      }
      if (ninthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintNinthKnowledgeQuestion = true;
      } else {
        hintNinthKnowledgeQuestion = false;
      }
      if (tenthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintTenthKnowledgeQuestion = true;
      } else {
        hintTenthKnowledgeQuestion = false;
      }
      if (eleventhknowledgeAnswerEnumEnumGroupValue ==
          knowledgeAnswerEnum.yes) {
        hintEleventhKnowledgeQuestion = true;
      } else {
        hintEleventhKnowledgeQuestion = false;
      }
      if (twelthknowledgeAnswerEnumEnumGroupValue == knowledgeAnswerEnum.yes) {
        hintTwelthKnowledgeQuestion = true;
      } else {
        hintTwelthKnowledgeQuestion = false;
      }
      if (thirteenthknowledgeAnswerEnumEnumGroupValue ==
          knowledgeAnswerEnum.no) {
        hintThirteenthKnowledgeQuestion = true;
      } else {
        hintThirteenthKnowledgeQuestion = false;
      }
      if (forteenthknowledgeAnswerEnumEnumGroupValue ==
          knowledgeAnswerEnum.yes) {
        hintForteenthKnowledgeQuestion = true;
      } else {
        hintForteenthKnowledgeQuestion = false;
      }
      if (fifteenthknowledgeAnswerEnumEnumGroupValue ==
          knowledgeAnswerEnum.no) {
        hintFifteenthKnowledgeQuestion = true;
      } else {
        hintFifteenthKnowledgeQuestion = false;
      }
    }
    update();
  }
}
