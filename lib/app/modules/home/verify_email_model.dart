class VerifyEmail {
  bool? isRegisteredEmail;
  bool? isInvalidEmailFormat;
  String? registeredEmail;
  String? registeredPage;

  VerifyEmail(
      {this.isRegisteredEmail,
      this.isInvalidEmailFormat,
      this.registeredEmail,
      this.registeredPage});

  VerifyEmail.fromJson(Map<String, dynamic> json) {
    isRegisteredEmail = json['isRegisteredEmail'];
    isInvalidEmailFormat = json['isInvalidEmailFormat'];
    registeredEmail = json['registeredEmail'];
    registeredPage = json['registeredPage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isRegisteredEmail'] = isRegisteredEmail;
    data['isInvalidEmailFormat'] = isInvalidEmailFormat;
    data['registeredEmail'] = registeredEmail;
    data['registeredPage'] = registeredPage;
    return data;
  }
}
