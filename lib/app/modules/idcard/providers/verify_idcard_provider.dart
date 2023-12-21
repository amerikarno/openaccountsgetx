import 'package:get/get.dart';

import '../verify_idcard_model.dart';

class VerifyIdcardProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VerifyIdcard.fromJson(map);
      if (map is List) {
        return map.map((item) => VerifyIdcard.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'http://localhost:1323/';
  }

  Future<VerifyIdcard?> getVerifyIdcard(String? id) async {
    final response = await get('verify/idcard/$id');
    return response.body;
  }

  Future<Response<VerifyIdcard>> postVerifyIdcard(
          VerifyIdcard verifyidcard) async =>
      await post('verify/idcard', verifyidcard);
  Future<Response> deleteVerifyIdcard(String? id) async =>
      await delete('verify/idcard/$id');
}
