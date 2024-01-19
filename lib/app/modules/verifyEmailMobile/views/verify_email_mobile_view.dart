// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/widget/widgets.dart';

import '../controllers/verify_email_mobile_controller.dart';

class VerifyEmailMobileView extends GetView<VerifyEmailMobileController> {
  const VerifyEmailMobileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final w = FWidgets();
    return Scaffold(
      appBar: AppBar(
        title: w.text(data: 'VerifyEmailMobileView'),
        centerTitle: true,
      ),
      body: Center(
        child: w.text(data: 'VerifyEmailMobileView is working'),
      ),
    );
  }
}
