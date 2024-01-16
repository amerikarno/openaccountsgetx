import 'package:flutter/material.dart';
// import 'package:openaccountsgetx/theme/themes.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:openaccountsgetx/locales/languages.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      // theme: Themes().lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      // locale
      translationsKeys: AppTranslation.translations,
      locale: const Locale('th', 'TH'),
      fallbackLocale: const Locale('th', 'TH'),
      defaultTransition: Transition.fade,
    ),
  );
}
