import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:openaccountsgetx/app/modules/home/providers/verify_email_provider.dart';
import 'package:openaccountsgetx/app/modules/home/verify_email_model.dart';

class VerifyEmailController extends GetxController
    with StateMixin<VerifyEmailModel> {
  VerifyEmailProvider? verifyEmailProvider;
  VerifyEmailController();

  VerifyEmailModel? verifyEmail;
  String? emailErrorMessage;
  String? email;

  void verifyEmailOnChanged(value) {
    email = value;
    update();
  }

  void verifyEmailOnSubmitted(email) {
    log('init: $email');
    verifyEmailProvider?.getVerifyEmail(email ?? 'null@test.com').then((resp) {
      log('success');
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      log('error');
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  void verifyEmailByHttpGet(input) {
    http
        .get(Uri.parse('http://10.2.3.175:1323/verify/email/test@test.com'))
        .then((resp) {
      final json = jsonDecode(resp.body);
      final verifyEmail = json.map((e) => VerifyEmailModel.fromJson(e));
      change(verifyEmail, status: RxStatus.success());
    });
  }
}
