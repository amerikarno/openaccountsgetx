import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/preInfo_data.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(width * .3, 'กรุณากรอกข้อมูลเพื่อเปิดบัญชี'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(width * 0.2, 0, width * 0.2, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() => DropdownButtonFormField(
                  // value: controller.thTitle.value,
                  onChanged: (value) => controller.setThTitleName(value),
                  items: thList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ),
              )
              // Text(
              //   'HomeView is working',
              //   style: TextStyle(fontSize: 20),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget AutoSizeText(double width, String text) {
  return SizedBox(width: width, child: FittedBox(child: Text(text)));
}
