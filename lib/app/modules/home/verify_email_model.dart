import 'dart:convert';

class VerifyEmailModel {
  bool? isRegisteredEmail;
  bool? isInvalidEmailFormat;
  String? registeredEmail;
  String? registeredPage;

  VerifyEmailModel verifyFromJson(String str) =>
      VerifyEmailModel.fromJson(jsonDecode(str));
  String verifyToJson(VerifyEmailModel data) => json.encode(data.toString());

  VerifyEmailModel(
      {this.isRegisteredEmail,
      this.isInvalidEmailFormat,
      this.registeredEmail,
      this.registeredPage});

  factory VerifyEmailModel.fromJson(Map<String, dynamic> json) =>
      VerifyEmailModel(
          isRegisteredEmail: json['isRegisteredEmail'] ?? false,
          isInvalidEmailFormat: json['isInvalidEmailFormat'] ?? false,
          registeredEmail: json['registeredEmail'] ?? '',
          registeredPage: json['registeredPage'] ?? '');

  static VerifyEmailModel dataFromJson(data) => VerifyEmailModel.fromJson(data);
}
