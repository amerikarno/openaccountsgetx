import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/theme/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: Themes().lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
