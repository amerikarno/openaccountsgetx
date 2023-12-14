import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/idcard/bindings/idcard_binding.dart';
import '../modules/idcard/views/idcard_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';
import '../modules/verifyEmailMobile/bindings/verify_email_mobile_binding.dart';
import '../modules/verifyEmailMobile/views/verify_email_mobile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.test;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.idcard,
      page: () => const IdcardView(),
      binding: IdcardBinding(),
    ),
    GetPage(
      name: _Paths.information,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.test,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_EMAIL_MOBILE,
      page: () => const VerifyEmailMobileView(),
      binding: VerifyEmailMobileBinding(),
    ),
  ];
}
