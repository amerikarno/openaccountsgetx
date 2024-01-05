import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/idcard/customer_information_model.dart';

class CustomerInformationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://localhost:1323/';
  }

  Future<Response<dynamic>> postCustomerInformation(
      CustomerInformation customerInformation) async {
    const token = 'fda-authen-key';
    try {
      final resp =
          await post('api/v1/idcard', customerInformation.toJson(), headers: {
        'Content-Type': 'application/json; charset=utf-8',
        'Authorization': 'Bearer $token',
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
      });
      return resp;
    } on Exception catch (err) {
      return Response(statusCode: 1, statusText: err.toString());
    }
  }
}
