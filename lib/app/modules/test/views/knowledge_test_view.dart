// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/questions/knowledge_test.dart';
import 'package:openaccountsgetx/app/data/test.dart';
import 'package:openaccountsgetx/widget/widgets.dart';

import '../controllers/test_controller.dart';

class KnowledgeTestView extends StatelessWidget {
  const KnowledgeTestView({Key? key}) : super(key: key);
  // final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const knowledgeTestQuestions = knowledgeQuestions;
    final w = FWidgets();
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
                  child: w.text(data: knowledgeQuestions[0].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[0].answers[0],
                      ctrl.hintFirstKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfirstknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[0].answers[1],
                      ctrl.hintFirstKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.firstknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfirstknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintFirstKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[0].hint, color: Colors.red)
                    : const SizedBox.shrink(),
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
                  child:
                      w.text(data: knowledgeTestQuestions[1].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[1].answers[0],
                      ctrl.hintSecondKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.secondknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setsecondknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[1].answers[1],
                      ctrl.hintSecondKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.secondknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setsecondknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintSecondKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[1].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[2].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[2].answers[0],
                      ctrl.hintThirdKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.thirdknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setthirdknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[2].answers[1],
                      ctrl.hintThirdKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.thirdknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setthirdknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintThirdKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[2].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[3].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[3].answers[0],
                      ctrl.hintForthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.forthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setforthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[3].answers[1],
                      ctrl.hintForthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.forthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setforthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintForthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[3].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[4].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[4].answers[0],
                      ctrl.hintFifthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.fifthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfifthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[4].answers[1],
                      ctrl.hintFifthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.fifthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfifthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintFifthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[4].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[5].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[5].answers[0],
                      ctrl.hintSixthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.sixthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setsixthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[5].answers[1],
                      ctrl.hintSixthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.sixthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setsixthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintSixthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[5].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[6].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[6].answers[0],
                      ctrl.hintSeventhKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.seventhknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setseventhknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[6].answers[1],
                      ctrl.hintSeventhKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.seventhknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setseventhknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintSeventhKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[6].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[7].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[7].answers[0],
                      ctrl.hintEighthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.eigththknowledgeAnswerEnumEnumGroupValue,
                      ctrl.seteigththknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[7].answers[1],
                      ctrl.hintEighthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.eigththknowledgeAnswerEnumEnumGroupValue,
                      ctrl.seteigththknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintEighthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[7].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[8].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[8].answers[0],
                      ctrl.hintNinthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.ninthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setninthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[8].answers[1],
                      ctrl.hintNinthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.ninthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setninthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintNinthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[8].hint, color: Colors.red)
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
                  child:
                      w.text(data: knowledgeTestQuestions[9].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[9].answers[0],
                      ctrl.hintTenthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.tenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.settenthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[9].answers[1],
                      ctrl.hintTenthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.tenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.settenthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintTenthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[9].hint, color: Colors.red)
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
                  child: w.text(
                      data: knowledgeTestQuestions[10].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[10].answers[0],
                      ctrl.hintEleventhKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.eleventhknowledgeAnswerEnumEnumGroupValue,
                      ctrl.seteleventhknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[10].answers[1],
                      ctrl.hintEleventhKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.eleventhknowledgeAnswerEnumEnumGroupValue,
                      ctrl.seteleventhknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintEleventhKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[10].hint,
                        color: Colors.red)
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
                  child: w.text(
                      data: knowledgeTestQuestions[11].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[11].answers[0],
                      ctrl.hintTwelthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.twelthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.settwelthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[11].answers[1],
                      ctrl.hintTwelthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.twelthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.settwelthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintTwelthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[11].hint,
                        color: Colors.red)
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
                  child: w.text(
                      data: knowledgeTestQuestions[12].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[12].answers[0],
                      ctrl.hintThirteenthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.thirteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setthirteenthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[12].answers[1],
                      ctrl.hintThirteenthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.thirteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setthirteenthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintThirteenthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[12].hint,
                        color: Colors.red)
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
                  child: w.text(
                      data: knowledgeTestQuestions[13].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[13].answers[0],
                      ctrl.hintForteenthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.forteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setforteenthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[13].answers[1],
                      ctrl.hintForteenthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.forteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setforteenthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintForteenthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[13].hint,
                        color: Colors.red)
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
                  child: w.text(
                      data: knowledgeTestQuestions[14].text, maxLines: 2),
                ),
                Row(children: [
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[14].answers[0],
                      ctrl.hintFifteenthKnowledgeQuestionYes,
                      KnowledgeAnswerEnum.yes,
                      ctrl.fifteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfifteenthknowledgeAnswerEnumEnumGroupValue),
                  knowledgeTestAnswer(
                      knowledgeTestQuestions[14].answers[1],
                      ctrl.hintFifteenthKnowledgeQuestionNo,
                      KnowledgeAnswerEnum.no,
                      ctrl.fifteenthknowledgeAnswerEnumEnumGroupValue,
                      ctrl.setfifteenthknowledgeAnswerEnumEnumGroupValue),
                ]),
                (ctrl.hintFifteenthKnowledgeQuestion)
                    ? w.text(
                        data: knowledgeTestQuestions[14].hint,
                        color: Colors.red)
                    : const Column(),
              ],
            ));
        final selectKnowledgeTestTextButton = ElevatedButton(
            onPressed: () {
              ctrl.setknowledgeTestTextButtonOnPress(context);
              if (!ctrl.hintFirstKnowledgeQuestion &&
                  !ctrl.hintSecondKnowledgeQuestion &&
                  !ctrl.hintThirdKnowledgeQuestion &&
                  !ctrl.hintForthKnowledgeQuestion &&
                  !ctrl.hintFifthKnowledgeQuestion &&
                  !ctrl.hintSixthKnowledgeQuestion &&
                  !ctrl.hintSeventhKnowledgeQuestion &&
                  !ctrl.hintEighthKnowledgeQuestion &&
                  !ctrl.hintNinthKnowledgeQuestion &&
                  !ctrl.hintTenthKnowledgeQuestion &&
                  !ctrl.hintEleventhKnowledgeQuestion &&
                  !ctrl.hintTwelthKnowledgeQuestion &&
                  !ctrl.hintThirteenthKnowledgeQuestion &&
                  !ctrl.hintForteenthKnowledgeQuestion &&
                  !ctrl.hintFifteenthKnowledgeQuestion) {
                Navigator.of(context).pop();
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.grey, width: 1),
                disabledForegroundColor: Colors.transparent),
            child: w.text(data: 'ok'.tr, color: Colors.orange));

        return Container(
            padding: EdgeInsets.fromLTRB(width * .02, 10, width * .02, 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              // controller: ,
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
                  ]),
            ));
      },
    );
  }

  SizedBox knowledgeTestAnswer(
      String answer,
      bool ctrlColor,
      KnowledgeAnswerEnum value,
      KnowledgeAnswerEnum? groupValue,
      void Function(dynamic)? onchange) {
    final w = FWidgets();
    return SizedBox(
        width: 100,
        child: ListTile(
            minLeadingWidth: 0,
            title: w.text(
                data: answer, color: (ctrlColor) ? Colors.green : Colors.black),
            leading: Radio<KnowledgeAnswerEnum>(
                visualDensity: const VisualDensity(horizontal: -4, vertical: 0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: value,
                groupValue: groupValue,
                onChanged: (v) => onchange!(v))));
  }
}
