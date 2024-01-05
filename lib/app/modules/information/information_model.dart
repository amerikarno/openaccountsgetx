class AddressModel {
  String homeNumber;
  String? villageNumber;
  String? villageName;
  String? subStreetName;
  String? streetName;
  String subDistrictName;
  String districtName;
  String provinceName;
  String zipCode;
  String countryName;
  String typeOfAddress;

  AddressModel({
    required this.homeNumber,
    this.villageNumber,
    this.villageName,
    this.subStreetName,
    this.streetName,
    required this.subDistrictName,
    required this.districtName,
    required this.provinceName,
    required this.zipCode,
    required this.countryName,
    required this.typeOfAddress,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['homeNumber'] = homeNumber;
    data['villageNumber'] = villageNumber;
    data['villageName'] = villageName;
    data['subStreetName'] = subStreetName;
    data['streetName'] = streetName;
    data['subDistrictName'] = subDistrictName;
    data['districtName'] = districtName;
    data['provinceName'] = provinceName;
    data['zipCode'] = zipCode;
    data['countryName'] = countryName;
    data['typeOfAddress'] = typeOfAddress;
    return data;
  }
}

class BookBankModel {
  String bankName;
  String bankBranchName;
  String bankAccountNumber;
  bool isDefalut;
  String accountType;

  BookBankModel({
    required this.bankName,
    required this.bankBranchName,
    required this.bankAccountNumber,
    required this.isDefalut,
    required this.accountType,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['bankName'] = bankName;
    data['bankBranchName'] = bankBranchName;
    data['bankAccountNumber'] = bankAccountNumber;
    data['isDefalut'] = isDefalut;
    data['accountType'] = accountType;
    return data;
  }
}

class OccupationModel {
  String sourceOfIncome;
  String currentOccupation;
  String officeName;
  String typeOfBusiness;
  String positionName;
  String salaryRange;

  OccupationModel({
    required this.sourceOfIncome,
    required this.currentOccupation,
    required this.officeName,
    required this.typeOfBusiness,
    required this.positionName,
    required this.salaryRange,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sourceOfIncome'] = sourceOfIncome;
    data['currentOccupation'] = currentOccupation;
    data['officeName'] = officeName;
    data['typeOfBusiness'] = typeOfBusiness;
    data['positionName'] = positionName;
    data['salaryRange'] = salaryRange;
    return data;
  }
}

class InvestmentModel {
  bool shortTermInvestment;
  bool longTermInvestment;
  bool taxesInvestment;
  bool retireInvestment;

  InvestmentModel({
    required this.shortTermInvestment,
    required this.longTermInvestment,
    required this.taxesInvestment,
    required this.retireInvestment,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['shortTermInvestment'] = shortTermInvestment;
    data['longTermInvestment'] = longTermInvestment;
    data['taxesInvestment'] = taxesInvestment;
    data['retireInvestment'] = retireInvestment;
    return data;
  }
}

class InformationModel {
  String id;
  AddressModel registeredAddress;
  AddressModel? currentAddress;
  AddressModel? officeAddress;
  BookBankModel firstBookBank;
  BookBankModel? secondBookBank;
  OccupationModel occupation;
  InvestmentModel investment;

  InformationModel({
    required this.id,
    required this.registeredAddress,
    this.currentAddress,
    this.officeAddress,
    required this.firstBookBank,
    this.secondBookBank,
    required this.occupation,
    required this.investment,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cid'] = id;
    data['registeredAddress'] = registeredAddress;
    data['currentAddress'] = currentAddress;
    data['officeAddress'] = officeAddress;
    data['firstBankAccount'] = firstBookBank;
    data['secondBankAccount'] = secondBookBank;
    data['occupation'] = occupation;
    data['investment'] = investment;
    return data;
  }
}
