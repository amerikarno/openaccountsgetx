import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/idcard/providers/customer_information_provider.dart';
import 'package:openaccountsgetx/app/modules/idcard/providers/verify_idcard_provider.dart';

import '../controllers/idcard_controller.dart';

class IdcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdcardController>(() => IdcardController());
    Get.lazyPut<VerifyIdcardProvider>(() => VerifyIdcardProvider());
    Get.lazyPut<CustomerInformationProvider>(() => CustomerInformationProvider());
  }
}
