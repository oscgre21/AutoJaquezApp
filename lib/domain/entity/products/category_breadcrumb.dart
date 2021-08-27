import "custom_properties.dart";

class CategoryBreadcrumb {
  String? name;
  String? seName;
  String? numberOfProducts;
  bool? includeInTopMenu;
  List<String>? subCategories;
  bool? haveSubCategories;
  String? route;
  int? id;
  CustomProperties? customProperties;

  CategoryBreadcrumb(
      {this.name,
      this.seName,
      this.numberOfProducts,
      this.includeInTopMenu,
      this.haveSubCategories,
      this.route,
      this.id,
      this.customProperties});

  factory CategoryBreadcrumb.fromJson(Map<String, dynamic> json) {
    return CategoryBreadcrumb(
      name: json['Name'],
      seName: json['SeName'],
      numberOfProducts: json['NumberOfProducts'],
      includeInTopMenu: json['IncludeInTopMenu'],
      haveSubCategories: json['HaveSubCategories'],
      route: json['Route'],
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
    data['NumberOfProducts'] = this.numberOfProducts;
    data['IncludeInTopMenu'] = this.includeInTopMenu;

    data['HaveSubCategories'] = this.haveSubCategories;
    data['Route'] = this.route;
    data['Id'] = this.id;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
