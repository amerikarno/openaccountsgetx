import 'package:get/get.dart';

import '../controllers/idcard_controller.dart';

class IdcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IdcardController>(
      () => IdcardController(),
    );
  }
}
