import 'dart:developer';

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
    );
  }

  Widget richText(
      {required data1,
      Color? color1,
      required String data2,
      Color? color2,
      int? maxLines}) {
    color1 ??= Colors.black;
    color2 ??= Colors.red;
    maxLines ??= 1;
    return AutoSizeText.rich(
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
      required String data2,
      Color? color2,
      int? maxLines}) {
    color1 ??= Colors.black;
    color2 ??= Colors.red;
    maxLines ??= 1;
    return AutoSizeText.rich(
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
    return DropdownButton(
      value: Get.locale?.languageCode,
      items: [
        DropdownMenuItem(
            value: 'en',
            child: ClipOval(
                child: Flag.fromCode(FlagsCode.GB, height: 30, width: 30))),
        DropdownMenuItem(
            value: 'th',
            child: ClipOval(
                child: Flag.fromCode(FlagsCode.TH, height: 30, width: 30))),
        DropdownMenuItem(
            value: 'cn',
            child: ClipOval(
                child: Flag.fromCode(FlagsCode.CN, height: 30, width: 30))),
      ],
      onChanged: (String? newLang) {
        var newLocale = Locale(newLang!, 'US'); // US is just a placeholder
        log(newLocale.toString());
        Get.updateLocale(newLocale);
      },
    );
  }
}