import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/test/providers/test_provider.dart';

import '../controllers/test_controller.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(() => TestController());
    Get.lazyPut<TestProvider>(() => TestProvider());
  }
}
