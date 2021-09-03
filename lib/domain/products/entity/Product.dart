class Product {
  String id;
  String Codigo;
  String Name;
  String Description;
  String ProductType;
  int Estatus;
  String icon = "assets/svg/haircut.svg";
  // String _Color;

  Product({
    required this.id,
    required this.Codigo,
    required this.Name,
    required this.Description,
    required this.ProductType,
    required this.Estatus,
  });

  factory Product.fromJson(Map<dynamic, dynamic> json) {
    return Product(
      id: json['id'],
      Codigo: json['codigo']!,
      Name: json['name']!,
      Description: json['description']!,
      ProductType: json['productType']!,
      Estatus: json['estatus'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.Codigo;
    data['name'] = this.Name;
    data['description'] = this.Description;
    data['productType'] = this.ProductType;
    data['estatus'] = this.Estatus;
    return data;
  }
}
