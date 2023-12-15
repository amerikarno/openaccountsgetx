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
    httpClient.baseUrl = '3.1.42.96:1323';
  }

  Future<VerifyMobile?> getVerifyMobile(int id) async {
    final response = await get('verify/mobile/$id');
    return response.body;
  }
}
