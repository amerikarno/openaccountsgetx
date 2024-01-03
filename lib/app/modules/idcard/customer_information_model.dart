class CustomerInformation {
  String thtitle;
  String thname;
  String thsurname;
  String engtitle;
  String engname;
  String engsurname;
  String email;
  String mobile;
  bool agreement;
  String birthdate;
  String status;
  String idcard;
  String laserCode;

  CustomerInformation({
    required this.thtitle,
    required this.thname,
    required this.thsurname,
    required this.engtitle,
    required this.engname,
    required this.engsurname,
    required this.email,
    required this.mobile,
    required this.agreement,
    required this.birthdate,
    required this.status,
    required this.idcard,
    required this.laserCode,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['thTitle'] = thtitle;
    data['thName'] = thname;
    data['thSurname'] = thsurname;
    data['engTitle'] = engtitle;
    data['engName'] = engname;
    data['engSurname'] = engsurname;
    data['email'] = email;
    data['mobile'] = mobile;
    data['agreement'] = agreement;
    data['birthDate'] = birthdate;
    data['marriageStatus'] = status;
    data['idCard'] = idcard;
    data['laserCode'] = laserCode;
    return data;
  }
}
