class ThaiIdValidator {
  String? personalId;
  String? errorMessage;

  ThaiIdValidator({this.personalId, this.errorMessage});

  static clean(String personalId) {
    return personalId.trim().replaceAll('-', '');
  }

  static bool? validateNow(String personalId, {String? errorMessasge}) {
    ThaiIdValidator validator = ThaiIdValidator(errorMessage: errorMessasge);
    return validator.validate(personalId);
  }

  bool validate(String personalId) {
    if (personalId.length != 13) {
      return false;
    }

    List<String> charList = ThaiIdValidator.clean(personalId).split('');

    // 1st step
    List<int> digitList = charList.map((e) => int.parse(e)).toList();

    var lastDigit = digitList[12];
    digitList.removeLast();

    // 2nd step
    var position = 13;

    for (var index = 0; index < 12; index++) {
      digitList[index] = digitList[index] * position;
      --position;
    }

    // 3rd step
    var sum = digitList.fold(0, (first, second) => first + second);

    // 4th step
    var mod = sum % 11;

    // 5th step
    var rawValue = 11 - mod;

    // 6th step
    int checkingValue;
    if (rawValue.toString().length == 1) {
      checkingValue = rawValue;
    } else {
      checkingValue = int.parse(rawValue.toString().split('')[0]);
    }

    // let's validate
    if (checkingValue == lastDigit) {
      return true;
    } else {
      return false;
    }
  }
}
