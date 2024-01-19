import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/questions/suite_test.dart';
import 'package:openaccountsgetx/app/data/test.dart';
import 'package:openaccountsgetx/widget/widgets.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../controllers/test_controller.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const suiteTestQuestions = suiteQuestions;
    final w = FWidgets();
    return Scaffold(
        appBar: AppBar(
          title: w.subject(data: 'InvestmentSuitabilityAssessmentForm'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<TestController>(builder: (ctrl) {
          final selectSuitableTestDropDown = DropdownButtonFormField(
              // iconSize: 0,
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.selectSuitableTestErrorMessage,
                  label: w.richText(data1: 'investmentRiskLevels'.tr)),
              value: ctrl.selectSuitableTest,
              onChanged: (value) => ctrl.setselectSuitableTestLists(value),
              items: [
                for (var data in ctrl.selectSuitableTestItems)
                  DropdownMenuItem(value: data, child: w.text(data: data))
              ]);

          final selectSuitableTestTextButton = TextButton(
              onPressed: () => ctrl.setselectSuitableTestOnPress(),
              child: w.text(data: 'selectSuitableTest'.tr));

          final firstSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[0],
              ctrl.firstSuiteAnswerEnumEnumGroupValue,
              ctrl.setfirstSuiteAnswerEnumEnumGroupValue);
          final secondSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[1],
              ctrl.secondSuiteAnswerEnumEnumGroupValue,
              ctrl.setsecondSuiteAnswerEnumEnumGroupValue);
          final thirdSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[2],
              ctrl.thirdSuiteAnswerEnumEnumGroupValue,
              ctrl.setthirdSuiteAnswerEnumEnumGroupValue);
          final forthSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[3],
              ctrl.forthSuiteAnswerEnumEnumGroupValue,
              ctrl.setforthSuiteAnswerEnumEnumGroupValue);
          final fifthSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[4],
              ctrl.fifthSuiteAnswerEnumEnumGroupValue,
              ctrl.setfifthSuiteAnswerEnumEnumGroupValue);
          final sixthSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[5],
              ctrl.sixthSuiteAnswerEnumEnumGroupValue,
              ctrl.setsixthSuiteAnswerEnumEnumGroupValue);
          final seventhSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[6],
              ctrl.seventhSuiteAnswerEnumEnumGroupValue,
              ctrl.setseventhSuiteAnswerEnumEnumGroupValue);
          final eiththSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[7],
              ctrl.eiththSuiteAnswerEnumEnumGroupValue,
              ctrl.seteiththSuiteAnswerEnumEnumGroupValue);
          final ninthSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[8],
              ctrl.ninthSuiteAnswerEnumEnumGroupValue,
              ctrl.setninthSuiteAnswerEnumEnumGroupValue);
          final tenthSuiteTestQuestion = suiteTestQuestionWidget(
              width,
              suiteTestQuestions[9],
              ctrl.tenthSuiteAnswerEnumEnumGroupValue,
              ctrl.settenthSuiteAnswerEnumEnumGroupValue);
          final suiteTestElevatedButton = ElevatedButton(
              onPressed: () => ctrl.setsuiteTestTextButtonOnPress(context),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.grey, width: 1),
                  disabledForegroundColor: Colors.transparent),
              child: w.text(data: 'ok'.tr, color: Colors.orange));

          final suiteTestEvaluateResultText =
              w.text(data: 'suiteTestEvaluateResult'.tr);
          final suiteTestResultText = w.text(data: 'suiteTestResult'.tr);
          final suiteTestProgressBar = SimpleCircularProgressBar(
            // notifier = ctrl.suiteSumPoinst;
            progressStrokeWidth: 10,
            progressColors: const [Colors.orange],
            backStrokeWidth: 10,
            backColor: Colors.grey,
            maxValue: 46,
            // valueNotifier: ValueNotifier(notifier),
            mergeMode: true,
            onGetText: (value) {
              value = ctrl.suiteSumPoints;
              log('on get text: $value, ${ctrl.suiteSumPoints}');
              return Text(
                '${value.toInt()}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              );
            },
            valueNotifier: ValueNotifier(ctrl.suiteSumPoints),
          );
          final investmentAnalysisResult =
              w.text(data: 'investmentAnalysisResult'.tr);
          final typeOfInvestmentAnalysis =
              w.text(data: 'typeOfInvestmentAnalysis'.tr);
          final typeOfInvestmentAnalysisResult =
              w.text(data: ctrl.investerType ?? '');
          final assetInvestmentType = w.text(data: 'assetInvestmentType'.tr);
          final bondInvestment = w.text(data: 'bondInvestment'.tr);
          final equityInvestment = w.text(data: 'equityInvestment'.tr);
          final derivativeInvestment = w.text(data: 'derivativeInvestment'.tr);
          final riskLevelInvestment = w.text(data: 'riskLevelInvestment'.tr);
          final digitalAssetRatio = Row(
            children: [
              w.text(data: 'digitalAssetRatio'.tr),
              w.text(data: ' ${ctrl.digitatAssetInvestmentRatios ?? ''}'),
            ],
          );

          // final digitalAssetRatio = FittedBox(
          //     child: Text(
          //         'สินทรัพย์ดิจิทัลสัดส่วน ${ctrl.digitatAssetInvestmentRatios ?? ''}'));
          final fatcaSubjectText = w.subject(data: 'fatcaSubject'.tr);
          final fatcaPrefixText1 = w.text(data: 'fatcaPrefix1'.tr);
          final fatcaPrefixText2 = Padding(
              padding: const EdgeInsets.only(left: 10),
              child: w.text(data: 'fatcaPrefix2'.tr));
          final fatcaPrefixText3 = Padding(
              padding: const EdgeInsets.only(left: 10),
              child: w.text(data: 'fatcaPrefix3'.tr));
          final fatcaPostfixText = w.text(data: 'fatcaPostfix'.tr);
          final fatcaYesListTile = SizedBox(
            width: width / 10,
            child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: w.text(data: 'yes'.tr),
                leading: Radio<FatcaEnum>(
                    visualDensity:
                        const VisualDensity(horizontal: -4, vertical: 0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: FatcaEnum.yes,
                    groupValue: ctrl.fatcaEnumGroupValue,
                    onChanged: (FatcaEnum? value) => ctrl.setfatca(value))),
          );
          final fatcaNoListTile = SizedBox(
            width: width / 10,
            child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: w.text(data: 'no'.tr),
                leading: Radio<FatcaEnum>(
                    visualDensity:
                        const VisualDensity(horizontal: -4, vertical: 0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: FatcaEnum.no,
                    groupValue: ctrl.fatcaEnumGroupValue,
                    onChanged: (FatcaEnum? value) => ctrl.setfatca(value))),
          );
          final americanChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'american'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.americanChecklist,
              onChanged: (value) => ctrl.checkamericanCheckList(value));
          final greenCardCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'greenCard'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.greenCardCheckList,
              onChanged: (value) => ctrl.checkgreenCardCheckList(value));
          final addressInAmericaCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'addressInAmerica'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.addressInAmericaCheckList,
              onChanged: (value) => ctrl.checkaddressInAmericaCheckList(value));
          final bornInAmericaCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'bornInAmerica'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.bornInAmericaCheckList,
              onChanged: (value) => ctrl.checkbornInAmericaCheckList(value));
          final addressInAmericaOpenAccountCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'addressInAmericaOpenAccount'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.addressInAmericaOpenAccountCheckList,
              onChanged: (value) =>
                  ctrl.checkaddressInAmericaOpenAccountCheckList(value));
          final americaMobileNumberCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'americaMobileNumber'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.americaMobileNumberCheckList,
              onChanged: (value) =>
                  ctrl.checkamericaMobileNumberCheckList(value));
          final americaBankAccountCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'americaBankAccount'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.americaBankAccountCheckList,
              onChanged: (value) =>
                  ctrl.checkamericaBankAccountCheckList(value));
          final authorityInAmericaCheckList = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: w.text(data: 'authorityInAmerica'.tr),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.authorityInAmericaCheckList,
              onChanged: (value) =>
                  ctrl.checkauthorityInAmericaCheckList(value));
          final fatcaElevatedButton = ElevatedButton(
              onPressed: () => ctrl.setfatcaTextButtonOnPress(context),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.grey, width: 1),
                  disabledForegroundColor: Colors.transparent),
              child: w.text(data: 'ok'.tr, color: Colors.orange));
          final knowledgeTestSubjectText =
              w.subject(data: 'knowledgeTestSubject'.tr);

          final knowledgeTestNoListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: w.text(data: 'later'.tr),
              leading: Radio<KnowledgeTestEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: KnowledgeTestEnum.no,
                  groupValue: ctrl.knowledgeTestEnumGroupValue,
                  onChanged: (KnowledgeTestEnum? value) =>
                      ctrl.setknowledgeTest(value)));
          final knowledgeTestYesListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: w.text(data: 'now'.tr),
              leading: Radio<KnowledgeTestEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: KnowledgeTestEnum.yes,
                  groupValue: ctrl.knowledgeTestEnumGroupValue,
                  onChanged: (KnowledgeTestEnum? value) {
                    ctrl.setknowledgeTest(value);
                    ctrl.setdoKnowledgeTestNowListTile();
                  }));
          final buyAndSaleAgreement =
              w.richSubject(data1: 'buyAndSaleAgreement'.tr);
          final buyAndSaleCheckbox = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              subtitle: w.text(data: buyAndSaleCheckboxDetail, maxLines: 5),
              controlAffinity: ListTileControlAffinity.leading,
              value: ctrl.buyAndSaleChecklist,
              onChanged: (value) => ctrl.checkbuyAndSaleCheckList(value));
          final previousButton = ElevatedButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () => ctrl.previousButtonOnPress(),
            child: Row(
              children: [
                const Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                  color: Colors.black,
                ),
                w.text(data: 'previous'.tr),
              ],
            ),
          );
          final nextButton = nextButtonInformation(ctrl);
          return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.withOpacity(.3)),
              child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: width /4,
                                      child: selectSuitableTestDropDown),
                                  selectSuitableTestTextButton
                                ],
                              ),
                              (ctrl.suiteSumPoints == 0.0)
                                  ? Row(
                                      children: [
                                        Text(
                                            ctrl.selectSuitableTestErrorMessage ??
                                                '')
                                      ],
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        ),
                        (ctrl.isSelectSuitableTest)
                            ? Column(
                                children: [
                                  const SizedBox(height: 10),
                                  firstSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  secondSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  thirdSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  forthSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  fifthSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  sixthSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  seventhSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  eiththSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  ninthSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  tenthSuiteTestQuestion,
                                  const SizedBox(height: 10),
                                  suiteTestElevatedButton
                                ],
                              )
                            : const Column(),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * .02, 15, width * .02, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: width * .35,
                                      child: suiteTestEvaluateResultText),
                                  const SizedBox(height: 10),
                                  const SizedBox(height: 10),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: width * .2,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  suiteTestResultText,
                                                  const SizedBox(height: 10),
                                                  suiteTestProgressBar,
                                                ])),
                                        SizedBox(
                                            width: width * .2,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  investmentAnalysisResult,
                                                  const SizedBox(height: 10),
                                                  typeOfInvestmentAnalysis,
                                                  const SizedBox(height: 10),
                                                  const SizedBox(height: 10),
                                                  SizedBox(
                                                      child:
                                                          typeOfInvestmentAnalysisResult),
                                                  const SizedBox(height: 10),
                                                  const SizedBox(height: 10),
                                                ])),
                                        SizedBox(width: width * .06),
                                        SizedBox(
                                            width: width * .3,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  assetInvestmentType,
                                                  const SizedBox(height: 10),
                                                  bondInvestment,
                                                  equityInvestment,
                                                  derivativeInvestment,
                                                  riskLevelInvestment,
                                                  digitalAssetRatio,
                                                ]))
                                      ])
                                ])),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                fatcaSubjectText,
                                const SizedBox(height: 10),
                                fatcaPrefixText1,
                                fatcaPrefixText2,
                                fatcaPrefixText3,
                                Row(
                                  children: [fatcaYesListTile, fatcaNoListTile],
                                ),
                                (ctrl.fatcaEnumGroupValueErrorMessage == null)
                                    ? const SizedBox.shrink()
                                    : Text(
                                        ctrl.fatcaEnumGroupValueErrorMessage ??
                                            '',
                                        style: const TextStyle(
                                            color: Colors.redAccent),
                                      ),
                                (ctrl.fatcaEnumGroupValue == FatcaEnum.yes)
                                    ? Column(
                                        children: [
                                          SizedBox(
                                              height: 30,
                                              child: americanChecklist),
                                          SizedBox(
                                              height: 30,
                                              child: greenCardCheckList),
                                          SizedBox(
                                              height: 30,
                                              child: addressInAmericaCheckList),
                                          const SizedBox(height: 10),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                              height: 30,
                                              child: bornInAmericaCheckList),
                                          SizedBox(
                                              height: 30,
                                              child:
                                                  addressInAmericaOpenAccountCheckList),
                                          SizedBox(
                                              height: 30,
                                              child:
                                                  americaMobileNumberCheckList),
                                          SizedBox(
                                              height: 30,
                                              child:
                                                  americaBankAccountCheckList),
                                          SizedBox(
                                              height: 30,
                                              child:
                                                  authorityInAmericaCheckList),
                                          const SizedBox(height: 10),
                                          fatcaElevatedButton,
                                          const SizedBox(height: 10),
                                        ],
                                      )
                                    : const SizedBox.shrink(),
                                const SizedBox(height: 10),
                                fatcaPostfixText,
                              ]),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(
                              width * .02, 15, width * .02, 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: width * .4,
                                      child: knowledgeTestSubjectText),
                                  SizedBox(
                                    width: width * .11,
                                  ),
                                  SizedBox(
                                      width: width * .11,
                                      child: knowledgeTestYesListTile),
                                  SizedBox(
                                    width: width * .03,
                                  ),
                                  SizedBox(
                                      width: width * .1,
                                      child: knowledgeTestNoListTile)
                                ],
                              ),
                              (ctrl.knowledgeTestEnumGroupValueErrorMessage ==
                                      null)
                                  ? const SizedBox.shrink()
                                  : Row(
                                      children: [
                                        Text(
                                          ctrl.knowledgeTestEnumGroupValueErrorMessage ??
                                              '',
                                          style: const TextStyle(
                                              color: Colors.redAccent),
                                        )
                                      ],
                                    ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                width * .02, 15, width * .02, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                buyAndSaleAgreement,
                                buyAndSaleCheckbox,
                                (ctrl.buyAndSaleChecklistErrorMessage == null)
                                    ? const SizedBox.shrink()
                                    : Text(
                                        ctrl.buyAndSaleChecklistErrorMessage ??
                                            '',
                                        style: const TextStyle(
                                            color: Colors.redAccent),
                                      ),
                              ],
                            )),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [previousButton, nextButton]),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }

  ElevatedButton nextButtonInformation(TestController ctrl) {
    final w = FWidgets();
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () => ctrl.nextButtonOnPress(),
      child: Row(
        children: [
          w.text(data: 'next'.tr),
          const Icon(
            Icons.arrow_circle_right,
            size: 45,
            color: Colors.orange,
          )
        ],
      ),
    );
  }

  Container suiteTestQuestionWidget(
      double width,
      SuitQuestion suiteTestQuestion,
      SuiteAnswerEnum? suiteGroupValue,
      void Function(dynamic)? suiteFunc) {
    final w = FWidgets();
    return Container(
        padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            w.text(data: suiteTestQuestion.text),
            suiteTestAnswerWidget(suiteTestQuestion.answers[0], suiteGroupValue,
                SuiteAnswerEnum.first, suiteFunc),
            suiteTestAnswerWidget(suiteTestQuestion.answers[1], suiteGroupValue,
                SuiteAnswerEnum.second, suiteFunc),
            suiteTestAnswerWidget(suiteTestQuestion.answers[2], suiteGroupValue,
                SuiteAnswerEnum.third, suiteFunc),
            suiteTestAnswerWidget(suiteTestQuestion.answers[3], suiteGroupValue,
                SuiteAnswerEnum.forth, suiteFunc),
          ],
        ));
  }

  SizedBox suiteTestAnswerWidget(
      String answer,
      SuiteAnswerEnum? suiteGroupValue,
      SuiteAnswerEnum value,
      void Function(dynamic)? suiteFunc) {
    final w = FWidgets();
    return SizedBox(
        height: 30,
        child: ListTile(
            minLeadingWidth: 0,
            title: w.text(data: answer),
            leading: Radio<SuiteAnswerEnum>(
                visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: value,
                groupValue: suiteGroupValue,
                onChanged: (value) => suiteFunc!(value))));
  }
}
