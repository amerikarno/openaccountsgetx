import 'package:auto_size_text/auto_size_text.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/data/bank/banks.dart';
import 'package:openaccountsgetx/app/data/bank/branch/anz.dart';
import 'package:openaccountsgetx/app/data/bank/branch/bay.dart';
import 'package:openaccountsgetx/app/data/bank/branch/bbl.dart';
import 'package:openaccountsgetx/app/data/bank/branch/bnp.dart';
import 'package:openaccountsgetx/app/data/bank/branch/boa.dart';
import 'package:openaccountsgetx/app/data/bank/branch/china.dart';
import 'package:openaccountsgetx/app/data/bank/branch/cimb.dart';
import 'package:openaccountsgetx/app/data/bank/branch/citi.dart';
import 'package:openaccountsgetx/app/data/bank/branch/deutsche.dart';
import 'package:openaccountsgetx/app/data/bank/branch/exim.dart';
import 'package:openaccountsgetx/app/data/bank/branch/housing.dart';
import 'package:openaccountsgetx/app/data/bank/branch/hsbc.dart';
import 'package:openaccountsgetx/app/data/bank/branch/icbc.dart';
import 'package:openaccountsgetx/app/data/bank/branch/indian.dart';
import 'package:openaccountsgetx/app/data/bank/branch/islamic.dart';
import 'package:openaccountsgetx/app/data/bank/branch/jpmorgan.dart';
import 'package:openaccountsgetx/app/data/bank/branch/kbank.dart';
import 'package:openaccountsgetx/app/data/bank/branch/kkp.dart';
import 'package:openaccountsgetx/app/data/bank/branch/ktb.dart';
import 'package:openaccountsgetx/app/data/bank/branch/lh.dart';
import 'package:openaccountsgetx/app/data/bank/branch/mega.dart';
import 'package:openaccountsgetx/app/data/bank/branch/mitsuitrust.dart';
import 'package:openaccountsgetx/app/data/bank/branch/mizuho.dart';
import 'package:openaccountsgetx/app/data/bank/branch/ocbc.dart';
import 'package:openaccountsgetx/app/data/bank/branch/rhb.dart';
import 'package:openaccountsgetx/app/data/bank/branch/saving.dart';
import 'package:openaccountsgetx/app/data/bank/branch/scb.dart';
import 'package:openaccountsgetx/app/data/bank/branch/sme.dart';
import 'package:openaccountsgetx/app/data/bank/branch/standard.dart';
import 'package:openaccountsgetx/app/data/bank/branch/sumitomo.dart';
import 'package:openaccountsgetx/app/data/bank/branch/thcredit.dart';
import 'package:openaccountsgetx/app/data/bank/branch/tisco.dart';
import 'package:openaccountsgetx/app/data/bank/branch/tmb.dart';
import 'package:openaccountsgetx/app/data/bank/branch/uob.dart';

class FWidgets {
  double width = 0;
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

  Widget textfield({
    String? errorText,
    String? label,
    required void Function(dynamic) onChanged,
    required void Function() onTap,
    required TextInputFormatter textInputFormatter,
  }) {
    final w = FWidgets();
    return Stack(children: [
      w.richText(data1: label),
      TextFormField(
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(errorText: errorText),
        onChanged: (value) => onChanged(value),
      ),
      // TextFormField(
      //     textAlign: TextAlign.start,
      //     textAlignVertical: TextAlignVertical.center,
      //     style: const TextStyle(fontSize: 14),
      //     decoration: InputDecoration(
      //         contentPadding: const EdgeInsets.symmetric(vertical: 0),
      //         errorText: errorText),
      //     onChanged: (value) => onChanged(value),
      //     onTap: () => onTap(),
      //     inputFormatters: [textInputFormatter]),
    ]);
  }

  Widget autocomplete(
      String branch, String subject, void Function(dynamic) onSelected) {
    final w = FWidgets();
    List<String> list;
    switch (branch) {
      case 'bank':
        list = bankName;
        break;
      case 'anz':
        list = anzBranchs;
        break;
      case 'bay':
        list = bayBranchs;
        break;
      case 'bbl':
        list = bblBranchs;
        break;
      case 'bnp':
        list = bnpBranchs;
        break;
      case 'boa':
        list = boaBranchs;
        break;
      case 'china':
        list = chinaBranchs;
        break;
      case 'cimb':
        list = cimbBranchs;
        break;
      case 'citi':
        list = citiBranchs;
        break;
      case 'deutsche':
        list = deutscheBranchs;
        break;
      case 'exim':
        list = eximBranchs;
        break;
      case 'housing':
        list = housingBranchs;
        break;
      case 'hsbc':
        list = hsbcBranchs;
        break;
      case 'icbc':
        list = icbcBranchs;
        break;
      case 'indian':
        list = indianBranchs;
        break;
      case 'islamic':
        list = islamicBranchs;
        break;
      case 'jpmorgan':
        list = jpmorganBranchs;
        break;
      case 'kbank':
        list = kbankBranchs;
        break;
      case 'kkp':
        list = kkpBranchs;
        break;
      case 'ktb':
        list = ktbBranchs;
        break;
      case 'lh':
        list = lhBranchs;
        break;
      case 'mega':
        list = megaBranchs;
        break;
      case 'mitsuitrust':
        list = mitsuitrustBranchs;
        break;
      case 'mizuho':
        list = mizuhoBranchs;
        break;
      case 'ocbc':
        list = ocbcBranchs;
        break;
      case 'rhb':
        list = rhbBranchs;
        break;
      case 'saving':
        list = savingBranchs;
        break;
      case 'scb':
        list = scbBranchs;
        break;
      case 'sme':
        list = smeBranchs;
        break;
      case 'standard':
        list = standardBranchs;
        break;
      case 'sumitomo':
        list = sumitomoBranchs;
        break;
      case 'thcredit':
        list = thcreditBranchs;
        break;
      case 'tisco':
        list = tiscoBranchs;
        break;
      case 'tmb':
        list = tmbBranchs;
        break;
      case 'uob':
        list = uobBranchs;
        break;
      default:
        list = bankName;
        break;
    }

    return Stack(children: [
      w.richText(data1: subject),
      Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return list.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (String selection) => onSelected(selection),
      ),
    ]);
  }

  Widget rawautocomplete(
      String branch, String subject, void Function(dynamic) onSelected) {
    List<String> list;

    switch (branch) {
      case 'bank':
        list = bankName;
        break;
      case 'anz':
        list = anzBranchs;
        break;
      case 'bay':
        list = bayBranchs;
        break;
      case 'bbl':
        list = bblBranchs;
        break;
      case 'bnp':
        list = bnpBranchs;
        break;
      case 'boa':
        list = boaBranchs;
        break;
      case 'china':
        list = chinaBranchs;
        break;
      case 'cimb':
        list = cimbBranchs;
        break;
      case 'citi':
        list = citiBranchs;
        break;
      case 'deutsche':
        list = deutscheBranchs;
        break;
      case 'exim':
        list = eximBranchs;
        break;
      case 'housing':
        list = housingBranchs;
        break;
      case 'hsbc':
        list = hsbcBranchs;
        break;
      case 'icbc':
        list = icbcBranchs;
        break;
      case 'indian':
        list = indianBranchs;
        break;
      case 'islamic':
        list = islamicBranchs;
        break;
      case 'jpmorgan':
        list = jpmorganBranchs;
        break;
      case 'kbank':
        list = kbankBranchs;
        break;
      case 'kkp':
        list = kkpBranchs;
        break;
      case 'ktb':
        list = ktbBranchs;
        break;
      case 'lh':
        list = lhBranchs;
        break;
      case 'mega':
        list = megaBranchs;
        break;
      case 'mitsuitrust':
        list = mitsuitrustBranchs;
        break;
      case 'mizuho':
        list = mizuhoBranchs;
        break;
      case 'ocbc':
        list = ocbcBranchs;
        break;
      case 'rhb':
        list = rhbBranchs;
        break;
      case 'saving':
        list = savingBranchs;
        break;
      case 'scb':
        list = scbBranchs;
        break;
      case 'sme':
        list = smeBranchs;
        break;
      case 'standard':
        list = standardBranchs;
        break;
      case 'sumitomo':
        list = sumitomoBranchs;
        break;
      case 'thcredit':
        list = thcreditBranchs;
        break;
      case 'tisco':
        list = tiscoBranchs;
        break;
      case 'tmb':
        list = tmbBranchs;
        break;
      case 'uob':
        list = uobBranchs;
        break;
      default:
        list = [];
        break;
    }
    return Stack(children: [
      FWidgets().richText(data1: subject),
      RawAutocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          return list.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: onSelected,
        fieldViewBuilder: (
          BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted,
        ) {
          return TextFormField(
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.bottom,
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
            },
          );
        },
        optionsViewBuilder: (
          BuildContext context,
          AutocompleteOnSelected<String> onSelected,
          Iterable<String> options,
        ) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4.0,
              child: SizedBox(
                height: 200.0,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final String option = options.elementAt(index);
                    return GestureDetector(
                      onTap: () {
                        onSelected(option);
                      },
                      child: ListTile(
                        title: Text(
                          option,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    ]);
  }
}
