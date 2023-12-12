import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/questions/suite_test.dart';
import 'package:openaccountsgetx/app/data/test.dart';

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
          const suiteTestResultText =
              FittedBox(child: Text('ผลการประเมินความเหมาะสมในการลงทุน'));

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
                                  tenthSuiteTestQuestion
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
                                      child: suiteTestResultText),
                                  Row(children: [
                                    SizedBox(
                                        width: width * .3,
                                        child: Column(children: [])),
                                    SizedBox(
                                        width: width * .3,
                                        child: Column(children: [])),
                                    SizedBox(
                                        width: width * .3,
                                        child: Column(children: []))
                                  ])
                                ])),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                      ])));
        }));
  }
}
