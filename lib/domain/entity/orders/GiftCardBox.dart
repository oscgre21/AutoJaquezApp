import 'CustomProperties.dart';

class GiftCardBox {
  bool? display;
  String? message;
  bool? isApplied;
  CustomProperties? customProperties;

  GiftCardBox(
      {this.display, this.message, this.isApplied, this.customProperties});

  GiftCardBox.fromJson(Map<String, dynamic> json) {
    display = json['Display'];
    message = json['Message'];
    isApplied = json['IsApplied'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Display'] = this.display;
    data['Message'] = this.message;
    data['IsApplied'] = this.isApplied;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
