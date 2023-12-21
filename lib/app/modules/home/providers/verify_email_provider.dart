import 'dart:developer';

import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/home/verify_email_model.dart';

class VerifyEmailProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VerifyEmailModel.fromJson(map);
      if (map is List) {
        return map.map((e) => VerifyEmailModel.fromJson(e)).toList();
      }
    };
    httpClient.baseUrl = 'http://127.0.0.1:1323/';
  }

  Future<VerifyEmailModel> getVerifyEmail(String? email) async {
    final resp = await get('verify/email/$email');
    return resp.body;
  }
}
