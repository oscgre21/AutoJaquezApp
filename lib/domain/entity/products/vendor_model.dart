import "custom_properties.dart";

class VendorModel {
  String? name;
  String? seName;
  int? id;
  CustomProperties? customProperties;

  VendorModel({this.name, this.seName, this.id, this.customProperties});

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    return VendorModel(
      name: json['Name'],
      seName: json['SeName'],
      id: json['Id'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['SeName'] = this.seName;
    data['Id'] = this.id;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
