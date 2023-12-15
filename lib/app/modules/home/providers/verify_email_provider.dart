import 'package:get/get.dart';

import '../verify_email_model.dart';

class VerifyEmailProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VerifyEmail.fromJson(map);
      if (map is List) {
        return map.map((item) => VerifyEmail.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = '3.1.42.96:1323';
  }

  Future<VerifyEmail?> getVerifyEmail(String id) async {
    final response = await get('verify/email/$id');
    return response.body;
  }
}
