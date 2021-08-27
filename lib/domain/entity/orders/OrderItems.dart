import 'CustomProperties.dart';
import 'Picture.dart';

class OrderItems {
  String? sku;
  String? vendorName;
  Picture? picture;
  int? productId;
  String? productName;
  String? productSeName;
  String? unitPrice;
  String? subTotal;
  String? discount;
  String? maximumDiscountedQty;
  int? quantity;
  String? attributeInfo;
  String? recurringInfo;
  String? rentalInfo;
  bool? allowItemEditing;
  bool? disableRemoval;
  int? id;
  CustomProperties? customProperties;

  OrderItems(
      {this.sku,
      this.vendorName,
      this.picture,
      this.productId,
      this.productName,
      this.productSeName,
      this.unitPrice,
      this.subTotal,
      this.discount,
      this.maximumDiscountedQty,
      this.quantity,
      this.attributeInfo,
      this.recurringInfo,
      this.rentalInfo,
      this.allowItemEditing,
      this.disableRemoval,
      this.id,
      this.customProperties});

  OrderItems.fromJson(Map<String, dynamic> json) {
    sku = json['Sku'];
    vendorName = json['VendorName'];
    picture =
        json['Picture'] != null ? new Picture.fromJson(json['Picture']) : null;
    productId = json['ProductId'];
    productName = json['ProductName'];
    productSeName = json['ProductSeName'];
    unitPrice = json['UnitPrice'];
    subTotal = json['SubTotal'];
    discount = json['Discount'];
    maximumDiscountedQty = json['MaximumDiscountedQty'];
    quantity = json['Quantity'];

    attributeInfo = json['AttributeInfo'];
    recurringInfo = json['RecurringInfo'];
    rentalInfo = json['RentalInfo'];
    allowItemEditing = json['AllowItemEditing'];
    disableRemoval = json['DisableRemoval'];

    id = json['Id'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Sku'] = this.sku;
    data['VendorName'] = this.vendorName;
    if (this.picture != null) {
      data['Picture'] = this.picture?.toJson();
    }
    data['ProductId'] = this.productId;
    data['ProductName'] = this.productName;
    data['ProductSeName'] = this.productSeName;
    data['UnitPrice'] = this.unitPrice;
    data['SubTotal'] = this.subTotal;
    data['Discount'] = this.discount;
    data['MaximumDiscountedQty'] = this.maximumDiscountedQty;
    data['Quantity'] = this.quantity;

    data['AttributeInfo'] = this.attributeInfo;
    data['RecurringInfo'] = this.recurringInfo;
    data['RentalInfo'] = this.rentalInfo;
    data['AllowItemEditing'] = this.allowItemEditing;
    data['DisableRemoval'] = this.disableRemoval;

    data['Id'] = this.id;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
