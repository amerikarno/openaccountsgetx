


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/test_controller.dart';

class KnowledgeTestView extends StatelessWidget {
  const KnowledgeTestView({Key? key, required this.widgets}) : super(key: key);
  final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(builder: (ctrl) {
        return Column(children: widgets,);
      },
    );
  }
}
