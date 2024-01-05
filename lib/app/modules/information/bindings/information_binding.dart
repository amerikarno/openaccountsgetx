import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/information/providers/information_provider.dart';

import '../controllers/information_controller.dart';

class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformationController>(() => InformationController());
    Get.lazyPut<InformationProvider>(() => InformationProvider());
  }
}
