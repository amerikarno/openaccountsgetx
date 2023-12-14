import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/test.dart';

import '../controllers/test_controller.dart';
import 'package:openaccountsgetx/app/data/questions/knowledge_test.dart';

class KnowledgeTestView extends StatelessWidget {
  const KnowledgeTestView({Key? key}) : super(key: key);
  // final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const knowledgeTestQuestions = knowledgeQuestions;
    return GetBuilder<TestController>(
      builder: (ctrl) {
        final firstKnowledgeTestQuestion = Container(
            padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(knowledgeQuestions[0].text),
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
                    ? Text(knowledgeTestQuestions[0].hint, style: const TextStyle(color: Colors.red),)
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
                              groupValue:
                                  ctrl.secondknowledgeAnswerEnumEnumGroupValue,
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
                              groupValue:
                                  ctrl.secondknowledgeAnswerEnumEnumGroupValue,
                              onChanged: (value) => ctrl
                                  .setsecondknowledgeAnswerEnumEnumGroupValue(
                                      value)))),
                ]),
                (ctrl.hintFirstKnowledgeQuestion)
                    ? Text(knowledgeTestQuestions[1].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[2].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[3].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[4].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[5].hint, style: const TextStyle(color: Colors.red))
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
                              groupValue:
                                  ctrl.seventhknowledgeAnswerEnumEnumGroupValue,
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
                              groupValue:
                                  ctrl.seventhknowledgeAnswerEnumEnumGroupValue,
                              onChanged: (value) => ctrl
                                  .setseventhknowledgeAnswerEnumEnumGroupValue(
                                      value)))),
                ]),
                (ctrl.hintFirstKnowledgeQuestion)
                    ? Text(knowledgeTestQuestions[6].hint, style: const TextStyle(color: Colors.red))
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
                              groupValue:
                                  ctrl.eigththknowledgeAnswerEnumEnumGroupValue,
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
                              groupValue:
                                  ctrl.eigththknowledgeAnswerEnumEnumGroupValue,
                              onChanged: (value) => ctrl
                                  .seteigththknowledgeAnswerEnumEnumGroupValue(
                                      value)))),
                ]),
                (ctrl.hintFirstKnowledgeQuestion)
                    ? Text(knowledgeTestQuestions[7].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[8].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[9].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[10].hint, style: const TextStyle(color: Colors.red))
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
                              groupValue:
                                  ctrl.twelthknowledgeAnswerEnumEnumGroupValue,
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
                              groupValue:
                                  ctrl.twelthknowledgeAnswerEnumEnumGroupValue,
                              onChanged: (value) => ctrl
                                  .settwelthknowledgeAnswerEnumEnumGroupValue(
                                      value)))),
                ]),
                (ctrl.hintFirstKnowledgeQuestion)
                    ? Text(knowledgeTestQuestions[11].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[12].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[13].hint, style: const TextStyle(color: Colors.red))
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
                    ? Text(knowledgeTestQuestions[14].hint, style: const TextStyle(color: Colors.red))
                    : const Column(),
              ],
            ));
        final selectKnowledgeTestTextButton = ElevatedButton(
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

        return Container(
            padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  firstKnowledgeTestQuestion,
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
                ]));
      },
    );
  }
}
