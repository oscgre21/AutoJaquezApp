import 'CustomProperties.dart';
import 'DiscountBox.dart';
import 'GiftCardBox.dart';
import 'OrderItems.dart';
import 'OrderReviewData.dart';

class OrderSummary {
  bool? onePageCheckoutEnabled;
  bool? showSku;
  bool? showProductImages;
  bool? isEditable;
  List<OrderItems> items = [];
  String? minOrderSubtotalWarning;
  bool? displayTaxShippingInfo;
  bool? termsOfServiceOnShoppingCartPage;
  bool? termsOfServiceOnOrderConfirmPage;
  bool? termsOfServicePopup;
  DiscountBox? discountBox;
  GiftCardBox? giftCardBox;
  OrderReviewData? orderReviewData;
  bool? hideCheckoutButton;
  bool? showVendorName;
  CustomProperties? customProperties;
  double? totalPrice;
  String? totalPriceFormat;

  OrderSummary(
      {this.onePageCheckoutEnabled,
      this.showSku,
      this.showProductImages,
      this.isEditable,
      required this.items,
      this.minOrderSubtotalWarning,
      this.displayTaxShippingInfo,
      this.termsOfServiceOnShoppingCartPage,
      this.termsOfServiceOnOrderConfirmPage,
      this.termsOfServicePopup,
      this.discountBox,
      this.giftCardBox,
      this.orderReviewData,
      this.hideCheckoutButton,
      this.showVendorName,
      this.customProperties});

  OrderSummary.fromJson(Map<String, dynamic> json) {
    onePageCheckoutEnabled = json['OnePageCheckoutEnabled'];
    showSku = json['ShowSku'];
    showProductImages = json['ShowProductImages'];
    isEditable = json['IsEditable'];
    if (json['Items'] != null) {
      items = [];
      json['Items'].forEach((v) {
        items.add(new OrderItems.fromJson(v));
      });
    }

    totalPrice =
        json['TotalPrice'] != null ? (json['TotalPrice'] as double) : 0;

    totalPriceFormat = json['TotalPriceFormat'];

    minOrderSubtotalWarning = json['MinOrderSubtotalWarning'];
    displayTaxShippingInfo = json['DisplayTaxShippingInfo'];
    termsOfServiceOnShoppingCartPage = json['TermsOfServiceOnShoppingCartPage'];
    termsOfServiceOnOrderConfirmPage = json['TermsOfServiceOnOrderConfirmPage'];
    termsOfServicePopup = json['TermsOfServicePopup'];
    discountBox = json['DiscountBox'] != null
        ? new DiscountBox.fromJson(json['DiscountBox'])
        : null;
    giftCardBox = json['GiftCardBox'] != null
        ? new GiftCardBox.fromJson(json['GiftCardBox'])
        : null;
    orderReviewData = json['OrderReviewData'] != null
        ? new OrderReviewData.fromJson(json['OrderReviewData'])
        : null;
    hideCheckoutButton = json['HideCheckoutButton'];
    showVendorName = json['ShowVendorName'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OnePageCheckoutEnabled'] = this.onePageCheckoutEnabled;
    data['ShowSku'] = this.showSku;
    data['ShowProductImages'] = this.showProductImages;
    data['IsEditable'] = this.isEditable;
    data['Items'] = this.items.map((v) => v.toJson()).toList();
    data['MinOrderSubtotalWarning'] = this.minOrderSubtotalWarning;
    data['DisplayTaxShippingInfo'] = this.displayTaxShippingInfo;
    data['TermsOfServiceOnShoppingCartPage'] =
        this.termsOfServiceOnShoppingCartPage;
    data['TermsOfServiceOnOrderConfirmPage'] =
        this.termsOfServiceOnOrderConfirmPage;
    data['TermsOfServicePopup'] = this.termsOfServicePopup;
    if (this.discountBox != null) {
      data['DiscountBox'] = this.discountBox?.toJson();
    }
    if (this.giftCardBox != null) {
      data['GiftCardBox'] = this.giftCardBox?.toJson();
    }
    if (this.orderReviewData != null) {
      data['OrderReviewData'] = this.orderReviewData?.toJson();
    }
    data['HideCheckoutButton'] = this.hideCheckoutButton;
    data['ShowVendorName'] = this.showVendorName;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
