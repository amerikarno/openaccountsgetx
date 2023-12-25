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
    httpClient.maxAuthRetries = 3;
  }

  Future<VerifyEmailModel> getVerifyEmail(String? email) async {
    const token = 'fda-authen-key';
    final resp = await get('verify/email/$email', headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br',
    });
    return resp.body;
  }
}
