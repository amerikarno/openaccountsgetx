import 'dart:io';
import 'dart:developer';

import '../verify_email_model.dart';

import 'package:get/get.dart';


class VerifyEmailProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = VerifyEmailModel.dataFromJson;
  }

  Future<Response<VerifyEmailProvider>> getVerifyEmail(String email) => get<VerifyEmailProvider>('http://3.1.42.96:1323/verify/email/$email');
}
