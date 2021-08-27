import 'CustomProperties.dart';

class DiscountBox {
  bool? display;
  bool? isApplied;
  CustomProperties? customProperties;

  DiscountBox({this.display, this.isApplied, this.customProperties});

  DiscountBox.fromJson(Map<String, dynamic> json) {
    display = json['Display'];

    isApplied = json['IsApplied'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['Display'] = this.display;

    data['IsApplied'] = this.isApplied;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
