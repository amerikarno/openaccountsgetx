import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/questions/suite_test.dart';
import 'package:openaccountsgetx/app/data/test.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../controllers/test_controller.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const suiteTestQuestions = suiteQuestions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('แบบประเมินความเหมาะสมในการลงทุน'),
          centerTitle: true,
        ),
        body: GetBuilder<TestController>(builder: (ctrl) {
          final selectSuitableTestDropDown = DropdownButtonFormField(
              menuMaxHeight: height * .5,
              decoration: InputDecoration(
                  errorText: ctrl.selectSuitableTestErrorMessage,
                  label: RichText(
                      text: const TextSpan(
                          text: 'ระดับความเสี่ยงในการลงทุนของท่าน',
                          children: [
                        TextSpan(text: '*', style: TextStyle(color: Colors.red))
                      ]))),
              value: ctrl.selectSuitableTest,
              onChanged: (value) => ctrl.setselectSuitableTestLists(value),
              items: [
                for (var data in ctrl.selectSuitableTestItems)
                  DropdownMenuItem(value: data, child: Text(data))
              ]);

          final selectSuitableTestTextButton = TextButton(
              onPressed: () => ctrl.setselectSuitableTestOnPress(),
              child: const Text('เลือกประเมินความเสี่ยงการลงทุนของท่าน'));

          final firstSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[0].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.firstSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfirstSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.firstSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfirstSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.firstSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfirstSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.firstSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfirstSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final secondSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[1].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[1].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.secondSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsecondSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[1].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.secondSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsecondSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[1].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.secondSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsecondSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[1].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.secondSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsecondSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final thirdSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[2].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[2].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.thirdSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setthirdSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[2].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.thirdSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setthirdSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[2].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.thirdSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setthirdSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[2].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.thirdSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setthirdSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final forthSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[3].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[3].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.forthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setforthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[3].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.forthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setforthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[3].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.forthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setforthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[3].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.forthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setforthSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final fifthSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[4].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[4].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.fifthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfifthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[4].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.fifthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfifthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[4].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.fifthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfifthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[4].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.fifthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setfifthSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final sixthSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[5].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[5].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.sixthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsixthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[5].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.sixthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsixthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[5].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.sixthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsixthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[5].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.sixthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setsixthSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final seventhSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[6].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[6].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.seventhSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setseventhSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[6].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.seventhSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setseventhSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[6].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.seventhSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setseventhSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[6].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.seventhSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setseventhSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final eiththSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[0].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.eiththSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.seteiththSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.eiththSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.seteiththSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.eiththSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.seteiththSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[0].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.eiththSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.seteiththSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final ninthSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[8].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[8].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.ninthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setninthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[8].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.ninthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setninthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[8].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.ninthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setninthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[8].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.ninthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.setninthSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final tenthSuiteTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(suiteTestQuestions[9].text),
                  ),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[9].answers[0],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.first,
                              groupValue:
                                  ctrl.tenthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.settenthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[9].answers[1],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.second,
                              groupValue:
                                  ctrl.tenthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.settenthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[9].answers[2],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.third,
                              groupValue:
                                  ctrl.tenthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.settenthSuiteAnswerEnumEnumGroupValue(
                                      value)))),
                  SizedBox(
                      height: 30,
                      child: ListTile(
                          minLeadingWidth: 0,
                          title: Text(
                            suiteTestQuestions[9].answers[3],
                            style: const TextStyle(fontSize: 12),
                          ),
                          leading: Radio<SuiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: SuiteAnswerEnum.forth,
                              groupValue:
                                  ctrl.tenthSuiteAnswerEnumEnumGroupValue,
                              onChanged: (value) =>
                                  ctrl.settenthSuiteAnswerEnumEnumGroupValue(
                                      value))))
                ],
              ));
          final suiteTestElevatedButton = ElevatedButton(
              onPressed: () => ctrl.setsuiteTestTextButtonOnPress(context),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.grey, width: 1),
                  disabledForegroundColor: Colors.transparent),
              child: const Text(
                'ตกลง',
                style: TextStyle(color: Colors.orange),
              ));

          const suiteTestEvaluateResultText =
              FittedBox(child: Text('ผลการประเมินความเหมาะสมในการลงทุน'));
          const suiteTestResultText =
              FittedBox(child: Text('ผลคะแนนที่ท่านได้'));
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
          const investmentAnalysisResult =
              FittedBox(child: Text('การวิเคราะห์ผล'));
          const typeOfInvestmentAnalysis =
              FittedBox(child: Text('ท่านเป็นนักลงทุนประเภท'));
          final typeOfInvestmentAnalysisResult =
              FittedBox(child: Text(ctrl.investerType ?? '  '));
          const assetInvestmentType =
              FittedBox(child: Text('ประเภทสินทรัพย์ที่สามารถลงทุนได้'));
          const bondInvestment = FittedBox(child: Text('ตราสารหนี้'));
          const equityInvestment = FittedBox(child: Text('ตราสารทุน'));
          const derivativeInvestment =
              FittedBox(child: Text('ตราสารอนุพันธ์เล็กน้อย'));
          const riskLevelInvestment =
              FittedBox(child: Text('หน่วยลงทุนที่มีระดับความเสี่ยง 1-5'));
          final digitalAssetRatio = FittedBox(
              child: Text(
                  'สินทรัพย์ดิจิทัลสัดส่วน ${ctrl.digitatAssetInvestmentRatios ?? '  '}'));
          const fatcaSubjectText = FittedBox(child: Text('กรอกข้อมูล FATCA'));
          const fatcaPrefixText =
              FittedBox(child: Text('''ข้าพเจ้ามีข้อใดข้อหนึ่งดังนี้
- มีสัญชาติอเมริกัน / เกิดที่อเมริกา /มีที่อยู่ในอเมริกาสำหรับพักอาศัยและติดต่อ
- โอนเงินเป็นประจำไปบัญชีที่อเมริกา
              '''));
          const fatcaPostfixText = FittedBox(
              child: Text(
                  'ข้าพเจ้าเข้าใจว่าเมื่อข้อมูลข้างต้นเปลี่ยนแปลง ข้าพเจ้าจะแจ้งบริษัทฯทันที'));
          final fatcaYesListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ใช่',
                ),
              ),
              leading: Radio<FatcaEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: FatcaEnum.yes,
                  groupValue: ctrl.fatcaEnumGroupValue,
                  onChanged: (FatcaEnum? value) => ctrl.setfatca(value)));
          final fatcaNoListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ไม่ใช่',
                ),
              ),
              leading: Radio<FatcaEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: FatcaEnum.no,
                  groupValue: ctrl.fatcaEnumGroupValue,
                  onChanged: (FatcaEnum? value) => ctrl.setfatca(value)));
          final americanChecklist = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.green,
              side: const BorderSide(color: Colors.grey),
              title: const Text('เป็นพลเมืองอเมริกา'),
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
              title: const Text('มีกรีนการ์ดหรือบัตรผู้มีที่อยู่ถาวรในอเมริกา'),
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
              title: const Text('มีที่อยู่ในอเมริกาเพื่อวัตถุประสงค์ทางภาษี'),
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
              title: const Text('เกิดในอเมริกาแต่ละสถานะพลเมืองแล้ว'),
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
              title: const Text(
                  'มีที่อยู่ในอเมริกาสำหรับบัญชีที่เปิดกับ ฟินันเซีย ดิจิทัล แอสเซท'),
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
              title: const Text(
                  'มีเบอร์โทรอเมริกา (ตนเองหรือผู้เกี่ยวข้อง) เกี่ยวข้องกับบัญชีที่เปิดกับฟินันเซีย ดิจิทัล แอสเซท'),
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
              title: const Text(
                  'มีการโอนเงินอัตโนมัติจากบัญชีที่เปิดกับฟินันเซีย ดิจิทัล แอสเซท ไปบัญชีอเมริกา'),
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
              title: const Text(
                  'ได้รับมอบอำนาจให้บุคคลที่อยู่ในอเมริกาทำธุรกรรมใดๆที่เกี่ยวข้องกับบัญชีที่เปิดกับ ฟินันเซีย ดิจิทัล แอสเซท'),
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
              child: const Text(
                'ตกลง',
                style: TextStyle(color: Colors.orange),
              ));
          const knowledgeTestSubjectText = FittedBox(
              child: Text('ท่านต้องการทำแบบทดสอบความรู้ Knowledge Test'));

          final knowledgeTestNoListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ภายหลัง',
                ),
              ),
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
              title: const FittedBox(
                child: Text(
                  'ทำตอนนี้',
                ),
              ),
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
          final buyAndSaleAgreement = FittedBox(
              child: RichText(
            text: const TextSpan(
                text: 'กรุณาอ่านและทำเครื่องหมายในช่องสี่เหลี่ยม',
                children: [
                  TextSpan(text: '*', style: TextStyle(color: Colors.red))
                ]),
          ));
          final buyAndSaleCheckbox = CheckboxListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              contentPadding: EdgeInsets.zero,
              checkColor: Colors.white,
              activeColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              subtitle: const Text(buyAndSaleCheckboxDetail,
                  maxLines: 5, style: TextStyle(fontSize: 12)),
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
            child: const Row(
              children: [
                Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                  color: Colors.black,
                ),
                Text('ย้อนกลับ',
                    style: TextStyle(fontSize: 10, color: Colors.black))
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
                                children: [
                                  SizedBox(
                                      width: width * .3,
                                      child: selectSuitableTestDropDown),
                                  SizedBox(
                                    width: width * .02,
                                  ),
                                  SizedBox(
                                      width: width * .3,
                                      child: selectSuitableTestTextButton)
                                ],
                              ),
                              // (ctrl.suiteSumPoints == 0.0)
                              //     ? Row(
                              //         children: [
                              //           Text(
                              //               ctrl.selectSuitableTestErrorMessage ??
                              //                   '')
                              //         ],
                              //       )
                              //     : const SizedBox.shrink(),
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
                                                  const SizedBox(
                                                      child:
                                                          investmentAnalysisResult),
                                                  const SizedBox(height: 10),
                                                  const SizedBox(
                                                      child:
                                                          typeOfInvestmentAnalysis),
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
                                fatcaPrefixText,
                                Row(
                                  children: [
                                    SizedBox(
                                        width: width * .0655,
                                        child: fatcaYesListTile),
                                    SizedBox(
                                      width: width * .03,
                                    ),
                                    SizedBox(
                                        width: width * .08,
                                        child: fatcaNoListTile)
                                  ],
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
                        Row(children: [
                          previousButton,
                          SizedBox(width: width * .5),
                          nextButton
                        ]),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }

  ElevatedButton nextButtonInformation(TestController ctrl) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () => ctrl.nextButtonOnPress(),
      child: const Row(
        children: [
          Text(
            'ถัดไป',
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          Icon(
            Icons.arrow_circle_right,
            size: 45,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
