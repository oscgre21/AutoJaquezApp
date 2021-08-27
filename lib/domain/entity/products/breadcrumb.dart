import "category_breadcrumb.dart";
import "custom_properties.dart";

class Breadcrumb {
  bool? enabled;
  int? productId;
  String? productName;
  String? productSeName;
  List<dynamic>? categoryBreadcrumb;
  CustomProperties? customProperties;

  Breadcrumb(
      {this.enabled,
      this.productId,
      this.productName,
      this.productSeName,
      this.categoryBreadcrumb,
      this.customProperties});

  factory Breadcrumb.fromJson(Map<String, dynamic> json) {
    return Breadcrumb(
      enabled: json['Enabled'],
      productId: json['ProductId'],
      productName: json['ProductName'],
      productSeName: json['ProductSeName'],
      categoryBreadcrumb: json['CategoryBreadcrumb'] != null
          ? json['CategoryBreadcrumb']
              .map((v) => new CategoryBreadcrumb.fromJson(v))
              .toList()
          : null,
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Enabled'] = this.enabled;
    data['ProductId'] = this.productId;
    data['ProductName'] = this.productName;
    data['ProductSeName'] = this.productSeName;
    if (this.categoryBreadcrumb != null) {
      data['CategoryBreadcrumb'] =
          this.categoryBreadcrumb?.map((v) => v.toJson()).toList();
    }
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
