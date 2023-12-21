class VerifyIdcard {
  bool? isRegisteredIDCard;
  String? registeredIDCard;
  String? customerID;

  VerifyIdcard(
      {this.isRegisteredIDCard, this.registeredIDCard, this.customerID});

  VerifyIdcard.fromJson(Map<String, dynamic> json) {
    isRegisteredIDCard = json['isRegisteredIDCard'];
    registeredIDCard = json['registeredIDCard'];
    customerID = json['customerID'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isRegisteredIDCard'] = isRegisteredIDCard;
    data['registeredIDCard'] = registeredIDCard;
    data['customerID'] = customerID;
    return data;
  }
}
