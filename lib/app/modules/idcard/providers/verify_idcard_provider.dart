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

  Future<dynamic> getVerifyIdcard(String? id) async {
    const token = 'fda-authen-key';
    try {
      final response = await get('verify/idcard/$id', headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Authorization': 'Bearer $token',
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
      });
      return response.body;
    } on Exception catch (err) {
      return Response(statusCode: 1, statusText: err.toString());
    }
  }

  Future<Response<VerifyIdcard>> postVerifyIdcard(
          VerifyIdcard verifyidcard) async =>
      await post('verify/idcard', verifyidcard);
  Future<Response> deleteVerifyIdcard(String? id) async =>
      await delete('verify/idcard/$id');
}
