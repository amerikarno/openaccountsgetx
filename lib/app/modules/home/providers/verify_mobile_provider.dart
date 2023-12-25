import 'package:get/get.dart';

import '../verify_mobile_model.dart';

class VerifyMobileProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VerifyMobile.fromJson(map);
      if (map is List) {
        return map.map((item) => VerifyMobile.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'http://127.0.0.1:1323/';
  }

  Future<VerifyMobile?> getVerifyMobile(String? mobile) async {
    const token = 'fda-authen-key';
    final response = await get('verify/mobile/$mobile', headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br',
    });
    return response.body;
  }
}
