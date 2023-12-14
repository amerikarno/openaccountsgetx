import 'package:get/get.dart';

import '../controllers/verify_email_mobile_controller.dart';

class VerifyEmailMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyEmailMobileController>(
      () => VerifyEmailMobileController(),
    );
  }
}
