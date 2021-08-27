import "custom_properties.dart";

class ProductPrice {
  String? currencyCode;
  String? oldPrice;
  String? price;
  String? priceWithDiscount;
  double? priceValue;
  bool? customerEntersPrice;
  bool? callForPrice;
  int? productId;
  bool? hidePrices;
  bool? isRental;
  String? rentalPrice;
  bool? displayTaxShippingInfo;
  String? basePricePAngV;
  CustomProperties? customProperties;

  ProductPrice(
      {this.currencyCode,
      this.oldPrice,
      this.price,
      this.priceWithDiscount,
      this.priceValue,
      this.customerEntersPrice,
      this.callForPrice,
      this.productId,
      this.hidePrices,
      this.isRental,
      this.rentalPrice,
      this.displayTaxShippingInfo,
      this.basePricePAngV,
      this.customProperties});

  factory ProductPrice.fromJson(Map<String, dynamic> json) {
    return ProductPrice(
      currencyCode: json['CurrencyCode'],
      oldPrice: json['OldPrice'],
      price: json['Price'],
      priceWithDiscount: json['PriceWithDiscount'],
      priceValue: json['PriceValue'] as double,
      customerEntersPrice: json['CustomerEntersPrice'],
      callForPrice: json['CallForPrice'],
      productId: json['ProductId'],
      hidePrices: json['HidePrices'],
      isRental: json['IsRental'],
      rentalPrice: json['RentalPrice'],
      displayTaxShippingInfo: json['DisplayTaxShippingInfo'],
      basePricePAngV: json['BasePricePAngV'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CurrencyCode'] = this.currencyCode;
    data['OldPrice'] = this.oldPrice;
    data['Price'] = this.price;
    data['PriceWithDiscount'] = this.priceWithDiscount;
    data['PriceValue'] = this.priceValue;
    data['CustomerEntersPrice'] = this.customerEntersPrice;
    data['CallForPrice'] = this.callForPrice;
    data['ProductId'] = this.productId;
    data['HidePrices'] = this.hidePrices;
    data['IsRental'] = this.isRental;
    data['RentalPrice'] = this.rentalPrice;
    data['DisplayTaxShippingInfo'] = this.displayTaxShippingInfo;
    data['BasePricePAngV'] = this.basePricePAngV;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
