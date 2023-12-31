import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/information/information_model.dart';

class InformationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:1323/';
  }

  Future<Response<dynamic>> postAddresses(InformationModel informationModel) async {
    const token = 'fda-authen-key';
    final header = <String, String>{
      'Content-Type': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br',
    };
    try {
      final resp =
          await post('api/v1/personalInformation', informationModel.toJson(), headers: header);
      return resp;
    } on Exception catch (err) {
      return Response(statusCode: 1, statusText: err.toString());
    }
  }
}
