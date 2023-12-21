import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/home/controllers/verify_email_controller.dart';
import 'package:openaccountsgetx/app/modules/home/providers/verify_email_provider.dart';
import 'package:openaccountsgetx/app/modules/home/providers/verify_mobile_provider.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<VerifyEmailController>(() => VerifyEmailController());
    Get.lazyPut<VerifyEmailProvider>(() => VerifyEmailProvider());
    Get.lazyPut<VerifyMobileProvider>(() => VerifyMobileProvider());
  }
}
