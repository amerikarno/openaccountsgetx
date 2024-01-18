// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verify_email_mobile_controller.dart';

class VerifyEmailMobileView extends GetView<VerifyEmailMobileController> {
  const VerifyEmailMobileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerifyEmailMobileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerifyEmailMobileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
