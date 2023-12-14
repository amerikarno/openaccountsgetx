import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/questions/knowledge_test.dart';
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
    const knowledgeTestQuestions = knowledgeQuestions;
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.first,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.second,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.third,
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
                          leading: Radio<suiteAnswerEnum>(
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: 0),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: suiteAnswerEnum.forth,
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
            // valueNotifier: ValueNotifier(10),
            mergeMode: true,
            onGetText: (value) {
              log('on get text: $value, ${ctrl.suiteSumPoints}');
              value = ctrl.suiteSumPoints;
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
              leading: Radio<fatcaEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: fatcaEnum.yes,
                  groupValue: ctrl.fatcaEnumGroupValue,
                  onChanged: (fatcaEnum? value) => ctrl.setfatca(value)));
          final fatcaNoListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ไม่ใช่',
                ),
              ),
              leading: Radio<fatcaEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: fatcaEnum.no,
                  groupValue: ctrl.fatcaEnumGroupValue,
                  onChanged: (fatcaEnum? value) => ctrl.setfatca(value)));
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
              leading: Radio<knowledgeTestEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: knowledgeTestEnum.no,
                  groupValue: ctrl.knowledgeTestEnumGroupValue,
                  onChanged: (knowledgeTestEnum? value) =>
                      ctrl.setknowledgeTest(value)));
          final firstKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[0].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[0].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfirstknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[0].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfirstknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[0].hint)
                      : const Column(),
                ],
              ));
          final secondKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[1].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[1].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .secondknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setsecondknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[1].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .secondknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setsecondknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[1].hint)
                      : const Column(),
                ],
              ));
          final thirdKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[2].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[2].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.thirdknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setthirdknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[2].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.thirdknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setthirdknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[2].hint)
                      : const Column(),
                ],
              ));
          final forthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[3].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[3].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.forthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setforthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[3].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.forthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setforthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[3].hint)
                      : const Column(),
                ],
              ));
          final fifthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[4].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[4].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.fifthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfifthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[4].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.fifthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfifthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[4].hint)
                      : const Column(),
                ],
              ));
          final sixthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[5].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[5].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.sixthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setsixthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[5].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.sixthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setsixthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[5].hint)
                      : const Column(),
                ],
              ));
          final seventhKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[6].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[6].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .seventhknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setseventhknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[6].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .seventhknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setseventhknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[6].hint)
                      : const Column(),
                ],
              ));
          final eighthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[7].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[7].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .eigththknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .seteigththknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[7].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .eigththknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .seteigththknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[7].hint)
                      : const Column(),
                ],
              ));
          final ninthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[8].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[8].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.ninthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setninthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[8].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.ninthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setninthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[8].hint)
                      : const Column(),
                ],
              ));
          final tenthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[9].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[9].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.tenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .settenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[9].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.tenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .settenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[9].hint)
                      : const Column(),
                ],
              ));
          final eleventhKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[10].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[10].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .eleventhknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .seteleventhknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[10].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .eleventhknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .seteleventhknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[10].hint)
                      : const Column(),
                ],
              ));
          final twelthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[11].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[11].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .twelthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .settwelthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[11].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .twelthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .settwelthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[11].hint)
                      : const Column(),
                ],
              ));
          final thirteenthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[12].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[12].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .thirteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setthirteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[12].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .thirteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setthirteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[12].hint)
                      : const Column(),
                ],
              ));
          final forteenthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[13].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[13].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .forteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setforteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[13].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .forteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setforteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[13].hint)
                      : const Column(),
                ],
              ));
          final fifteenthKnowledgeTestQuestion = Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[14].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[14].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue: ctrl
                                    .fifteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfifteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[14].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue: ctrl
                                    .fifteenthknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfifteenthknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[14].hint)
                      : const Column(),
                ],
              ));
          final selectKnowledgeTestTextButton =  ElevatedButton(
              onPressed: () => ctrl.setknowledgeTestTextButtonOnPress(context),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  side: const BorderSide(color: Colors.grey, width: 1),
                  disabledForegroundColor: Colors.transparent),
              child: const Text(
                'ตกลง',
                style: TextStyle(color: Colors.orange),
              ));
          final knowledgeTestYesListTile = ListTile(
              contentPadding: EdgeInsets.zero,
              title: const FittedBox(
                child: Text(
                  'ทำตอนนี้',
                ),
              ),
              leading: Radio<knowledgeTestEnum>(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: knowledgeTestEnum.yes,
                  groupValue: ctrl.knowledgeTestEnumGroupValue,
                  onChanged: (knowledgeTestEnum? value) {
                    ctrl.setknowledgeTest(value);
                    ctrl.setdoKnowledgeTestNowListTile(context, [
                       Container(
              padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(knowledgeTestQuestions[0].text),
                  ),
                  Row(children: [
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[0].answers[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.yes,
                                groupValue:
                                    ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfirstknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                    SizedBox(
                        width: 100,
                        child: ListTile(
                            minLeadingWidth: 0,
                            title: Text(
                              knowledgeTestQuestions[0].answers[1],
                              style: const TextStyle(fontSize: 12),
                            ),
                            leading: Radio<knowledgeAnswerEnum>(
                                visualDensity: const VisualDensity(
                                    horizontal: -4, vertical: 0),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value: knowledgeAnswerEnum.no,
                                groupValue:
                                    ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                                onChanged: (value) => ctrl
                                    .setfirstknowledgeAnswerEnumEnumGroupValue(
                                        value)))),
                  ]),
                  (ctrl.hintFirstKnowledgeQuestion)
                      ? Text(knowledgeTestQuestions[0].hint)
                      : const Column(),
                ],
              )),
                      const SizedBox(height: 10),
                      secondKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      thirdKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      forthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      fifthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      sixthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      seventhKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      eighthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      ninthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      tenthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      eleventhKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      twelthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      thirteenthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      forteenthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      fifteenthKnowledgeTestQuestion,
                      const SizedBox(height: 10),
                      selectKnowledgeTestTextButton,
                    ]);
                  }));
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
                          child: Row(
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
                                (ctrl.fatcaEnumGroupValue == fatcaEnum.yes)
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
                                    : const Column(),
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
                          child: Row(
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
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }
}
