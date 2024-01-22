import 'package:auto_size_text/auto_size_text.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FWidgets {
  List<double> presetFontTexts = [14, 12, 10, 8, 6];
  List<double> presetFontSubjects = [22, 18, 14, 10];

  Widget text({required String data, Color? color, int? maxLines}) {
    color ??= Colors.black;
    maxLines ??= 1;
    return AutoSizeText(
      data,
      style: TextStyle(color: color),
      maxLines: maxLines,
      presetFontSizes: presetFontTexts,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget subject({required String data, Color? color, int? maxLines}) {
    color ??= Colors.black;
    maxLines ??= 1;
    return AutoSizeText(
      data,
      style: TextStyle(fontWeight: FontWeight.bold, color: color),
      maxLines: maxLines,
      presetFontSizes: presetFontSubjects,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget richText(
      {required data1,
      Color? color1,
      String? data2,
      Color? color2,
      int? maxLines}) {
    data2 ??= '*';
    color1 ??= Colors.black;
    color2 ??= Colors.red;
    maxLines ??= 1;
    return AutoSizeText.rich(
      overflow: TextOverflow.ellipsis,
      TextSpan(text: data1, style: TextStyle(color: color1), children: [
        TextSpan(
          text: data2,
          style: TextStyle(color: color2),
        )
      ]),
      maxLines: maxLines,
      presetFontSizes: presetFontTexts,
    );
  }

  Widget richSubject(
      {required data1,
      Color? color1,
      String? data2,
      Color? color2,
      int? maxLines}) {
    data2 ??= '*';
    color1 ??= Colors.black;
    color2 ??= Colors.red;
    maxLines ??= 1;
    return AutoSizeText.rich(
      overflow: TextOverflow.ellipsis,
      TextSpan(
          text: data1,
          style: TextStyle(fontWeight: FontWeight.bold, color: color1),
          children: [
            TextSpan(
              text: data2,
              style: TextStyle(fontWeight: FontWeight.bold, color: color2),
            )
          ]),
      maxLines: maxLines,
      presetFontSizes: presetFontSubjects,
    );
  }

  Widget nextIcon() {
    return const Icon(
      Icons.arrow_circle_right,
      size: 40,
      color: Colors.orange,
    );
  }

  Widget switchLanguages() {
    return IconButton(
      icon: const Icon(Icons.language),
      onPressed: () {
        var locale = const Locale('th', 'TH');
        if (Get.locale == locale) {
          locale = const Locale('en', 'US');
        }
        Get.updateLocale(locale);
      },
    );
  }

  Widget dropdownLanguages() {
    var country = {'en': 'US', 'cn': 'CN', 'th': 'TH'};
    return DropdownButton(
        value: Get.locale?.languageCode,
        items: [languageItem('en'), languageItem('th'), languageItem('cn')],
        onChanged: (String? lang) =>
            Get.updateLocale(Locale(lang!, country[lang])));
  }

  DropdownMenuItem<String> languageItem(String language) {
    return DropdownMenuItem(
        value: language,
        child: ClipOval(
            child: Flag.fromCode(FlagsCode.GB, height: 30, width: 30)));
  }

  double getTextSize(double width) {
    if (width >= 1000) {
      return 14;
    } else if (width >= 750) {
      return 12;
    } else if (width >= 500) {
      return 10;
    } else {
      return 8;
    }
  }
  double getSubjectSize(double width) {
    if (width >= 1000) {
      return 16;
    } else if (width >= 750) {
      return 14;
    } else if (width >= 500) {
      return 12;
    } else {
      return 10;
    }
  }
}
