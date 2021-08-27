import "custom_properties.dart";

class AddToCart {
  int? productId;
  int? enteredQuantity;
  String? minimumQuantityNotification;
  bool? customerEntersPrice;
  double? customerEnteredPrice;
  String? customerEnteredPriceRange;
  bool? disableBuyButton;
  bool? disableWishlistButton;
  bool? isRental;
  bool? availableForPreOrder;
  String? preOrderAvailabilityStartDateTimeUtc;
  String? preOrderAvailabilityStartDateTimeUserTime;
  int? updatedShoppingCartItemId;
  String? updateShoppingCartItemType;
  CustomProperties? customProperties;

  AddToCart(
      {this.productId,
      this.enteredQuantity,
      this.minimumQuantityNotification,
      this.customerEntersPrice,
      this.customerEnteredPrice,
      this.customerEnteredPriceRange,
      this.disableBuyButton,
      this.disableWishlistButton,
      this.isRental,
      this.availableForPreOrder,
      this.preOrderAvailabilityStartDateTimeUtc,
      this.preOrderAvailabilityStartDateTimeUserTime,
      this.updatedShoppingCartItemId,
      this.updateShoppingCartItemType,
      this.customProperties});

  factory AddToCart.fromJson(Map<String, dynamic> json) {
    return AddToCart(
      productId: json['ProductId'],
      enteredQuantity: json['EnteredQuantity'],
      minimumQuantityNotification: json['MinimumQuantityNotification'],
      customerEntersPrice: json['CustomerEntersPrice'],
      customerEnteredPrice: json['CustomerEnteredPrice'] as double,
      customerEnteredPriceRange: json['CustomerEnteredPriceRange'],
      disableBuyButton: json['DisableBuyButton'],
      disableWishlistButton: json['DisableWishlistButton'],
      isRental: json['IsRental'],
      availableForPreOrder: json['AvailableForPreOrder'],
      preOrderAvailabilityStartDateTimeUtc:
          json['PreOrderAvailabilityStartDateTimeUtc'],
      preOrderAvailabilityStartDateTimeUserTime:
          json['PreOrderAvailabilityStartDateTimeUserTime'],
      updatedShoppingCartItemId: json['UpdatedShoppingCartItemId'],
      updateShoppingCartItemType: json['UpdateShoppingCartItemType'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductId'] = this.productId;
    data['EnteredQuantity'] = this.enteredQuantity;
    data['MinimumQuantityNotification'] = this.minimumQuantityNotification;

    data['CustomerEntersPrice'] = this.customerEntersPrice;
    data['CustomerEnteredPrice'] = this.customerEnteredPrice;
    data['CustomerEnteredPriceRange'] = this.customerEnteredPriceRange;
    data['DisableBuyButton'] = this.disableBuyButton;
    data['DisableWishlistButton'] = this.disableWishlistButton;
    data['IsRental'] = this.isRental;
    data['AvailableForPreOrder'] = this.availableForPreOrder;
    data['PreOrderAvailabilityStartDateTimeUtc'] =
        this.preOrderAvailabilityStartDateTimeUtc;
    data['PreOrderAvailabilityStartDateTimeUserTime'] =
        this.preOrderAvailabilityStartDateTimeUserTime;
    data['UpdatedShoppingCartItemId'] = this.updatedShoppingCartItemId;
    data['UpdateShoppingCartItemType'] = this.updateShoppingCartItemType;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
