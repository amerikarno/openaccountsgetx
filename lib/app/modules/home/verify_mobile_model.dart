class VerifyMobile {
  bool? isRegisteredMobileNo;
  bool? isInvalidMobileNoFormat;
  String? registeredMobileNo;
  String? registeredPage;

  VerifyMobile(
      {this.isRegisteredMobileNo,
      this.isInvalidMobileNoFormat,
      this.registeredMobileNo,
      this.registeredPage});

  VerifyMobile.fromJson(Map<String, dynamic> json) {
    isRegisteredMobileNo = json['isRegisteredMobileNo'] ?? false;
    isInvalidMobileNoFormat = json['isInvalidMobileNoFormat'] ?? false;
    registeredMobileNo = json['registeredMobileNo'];
    registeredPage = json['registeredPage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isRegisteredMobileNo'] = isRegisteredMobileNo ?? false;
    data['isInvalidMobileNoFormat'] = isInvalidMobileNoFormat ?? false;
    data['registeredMobileNo'] = registeredMobileNo;
    data['registeredPage'] = registeredPage;
    return data;
  }
}
