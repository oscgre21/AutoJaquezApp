import 'CustomProperties.dart';

class BillingAddress {
  String? firstName;
  String? lastName;
  String? email;
  bool? companyEnabled;
  bool? companyRequired;
  String? company;
  bool? countryEnabled;
  int? countryId;
  String? countryName;
  bool? stateProvinceEnabled;
  int? stateProvinceId;
  String? stateProvinceName;
  bool? countyEnabled;
  bool? countyRequired;
  String? county;
  bool? cityEnabled;
  bool? cityRequired;
  String? city;
  bool? streetAddressEnabled;
  bool? streetAddressRequired;
  String? address1;
  bool? streetAddress2Enabled;
  bool? streetAddress2Required;
  String? address2;
  bool? zipPostalCodeEnabled;
  bool? zipPostalCodeRequired;
  String? zipPostalCode;
  bool? phoneEnabled;
  bool? phoneRequired;
  String? phoneNumber;
  bool? faxEnabled;
  bool? faxRequired;
  String? faxNumber;
  String? formattedCustomAddressAttributes;
  List<String>? customAddressAttributes;
  int? id;
  CustomProperties? customProperties;

  BillingAddress(
      {this.firstName,
      this.lastName,
      this.email,
      this.companyEnabled,
      this.companyRequired,
      this.company,
      this.countryEnabled,
      this.countryId,
      this.countryName,
      this.stateProvinceEnabled,
      this.stateProvinceId,
      this.stateProvinceName,
      this.countyEnabled,
      this.countyRequired,
      this.county,
      this.cityEnabled,
      this.cityRequired,
      this.city,
      this.streetAddressEnabled,
      this.streetAddressRequired,
      this.address1,
      this.streetAddress2Enabled,
      this.streetAddress2Required,
      this.address2,
      this.zipPostalCodeEnabled,
      this.zipPostalCodeRequired,
      this.zipPostalCode,
      this.phoneEnabled,
      this.phoneRequired,
      this.phoneNumber,
      this.faxEnabled,
      this.faxRequired,
      this.faxNumber,
      this.formattedCustomAddressAttributes,
      this.customAddressAttributes,
      this.id,
      this.customProperties});

  BillingAddress.fromJson(Map<String, dynamic> json) {
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    companyEnabled = json['CompanyEnabled'];
    companyRequired = json['CompanyRequired'];
    company = json['Company'];
    countryEnabled = json['CountryEnabled'];
    countryId = json['CountryId'];
    countryName = json['CountryName'];
    stateProvinceEnabled = json['StateProvinceEnabled'];
    stateProvinceId = json['StateProvinceId'];
    stateProvinceName = json['StateProvinceName'];
    countyEnabled = json['CountyEnabled'];
    countyRequired = json['CountyRequired'];
    county = json['County'];
    cityEnabled = json['CityEnabled'];
    cityRequired = json['CityRequired'];
    city = json['City'];
    streetAddressEnabled = json['StreetAddressEnabled'];
    streetAddressRequired = json['StreetAddressRequired'];
    address1 = json['Address1'];
    streetAddress2Enabled = json['StreetAddress2Enabled'];
    streetAddress2Required = json['StreetAddress2Required'];
    address2 = json['Address2'];
    zipPostalCodeEnabled = json['ZipPostalCodeEnabled'];
    zipPostalCodeRequired = json['ZipPostalCodeRequired'];
    zipPostalCode = json['ZipPostalCode'];
    phoneEnabled = json['PhoneEnabled'];
    phoneRequired = json['PhoneRequired'];
    phoneNumber = json['PhoneNumber'];
    faxEnabled = json['FaxEnabled'];
    faxRequired = json['FaxRequired'];
    faxNumber = json['FaxNumber'];

    id = json['Id'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['CompanyEnabled'] = this.companyEnabled;
    data['CompanyRequired'] = this.companyRequired;
    data['Company'] = this.company;
    data['CountryEnabled'] = this.countryEnabled;
    data['CountryId'] = this.countryId;
    data['CountryName'] = this.countryName;
    data['StateProvinceEnabled'] = this.stateProvinceEnabled;
    data['StateProvinceId'] = this.stateProvinceId;
    data['StateProvinceName'] = this.stateProvinceName;
    data['CountyEnabled'] = this.countyEnabled;
    data['CountyRequired'] = this.countyRequired;
    data['County'] = this.county;
    data['CityEnabled'] = this.cityEnabled;
    data['CityRequired'] = this.cityRequired;
    data['City'] = this.city;
    data['StreetAddressEnabled'] = this.streetAddressEnabled;
    data['StreetAddressRequired'] = this.streetAddressRequired;
    data['Address1'] = this.address1;
    data['StreetAddress2Enabled'] = this.streetAddress2Enabled;
    data['StreetAddress2Required'] = this.streetAddress2Required;
    data['Address2'] = this.address2;
    data['ZipPostalCodeEnabled'] = this.zipPostalCodeEnabled;
    data['ZipPostalCodeRequired'] = this.zipPostalCodeRequired;
    data['ZipPostalCode'] = this.zipPostalCode;
    data['PhoneEnabled'] = this.phoneEnabled;
    data['PhoneRequired'] = this.phoneRequired;
    data['PhoneNumber'] = this.phoneNumber;
    data['FaxEnabled'] = this.faxEnabled;
    data['FaxRequired'] = this.faxRequired;
    data['FaxNumber'] = this.faxNumber;

    data['Id'] = this.id;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
