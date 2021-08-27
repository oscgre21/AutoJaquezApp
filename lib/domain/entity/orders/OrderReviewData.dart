import 'BillingAddress.dart';
import 'CustomProperties.dart';

class OrderReviewData {
  bool? display;
  BillingAddress? billingAddress;
  bool? isShippable;
  BillingAddress? shippingAddress;
  bool? selectedPickupInStore;
  BillingAddress? pickupAddress;
  String? shippingMethod;
  String? paymentMethod;
  CustomProperties? customValues;
  CustomProperties? customProperties;

  OrderReviewData(
      {this.display,
      this.billingAddress,
      this.isShippable,
      this.shippingAddress,
      this.selectedPickupInStore,
      this.pickupAddress,
      this.shippingMethod,
      this.paymentMethod,
      this.customValues,
      this.customProperties});

  OrderReviewData.fromJson(Map<String, dynamic> json) {
    display = json['Display'];
    billingAddress = json['BillingAddress'] != null
        ? new BillingAddress.fromJson(json['BillingAddress'])
        : null;
    isShippable = json['IsShippable'];
    shippingAddress = json['ShippingAddress'] != null
        ? new BillingAddress.fromJson(json['ShippingAddress'])
        : null;
    selectedPickupInStore = json['SelectedPickupInStore'];
    pickupAddress = json['PickupAddress'] != null
        ? new BillingAddress.fromJson(json['PickupAddress'])
        : null;
    shippingMethod = json['ShippingMethod'];
    paymentMethod = json['PaymentMethod'];
    customValues = json['CustomValues'] != null
        ? new CustomProperties.fromJson(json['CustomValues'])
        : null;
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Display'] = this.display;
    if (this.billingAddress != null) {
      data['BillingAddress'] = this.billingAddress?.toJson();
    }
    data['IsShippable'] = this.isShippable;
    if (this.shippingAddress != null) {
      data['ShippingAddress'] = this.shippingAddress?.toJson();
    }
    data['SelectedPickupInStore'] = this.selectedPickupInStore;
    if (this.pickupAddress != null) {
      data['PickupAddress'] = this.pickupAddress?.toJson();
    }
    data['ShippingMethod'] = this.shippingMethod;
    data['PaymentMethod'] = this.paymentMethod;
    if (this.customValues != null) {
      data['CustomValues'] = this.customValues?.toJson();
    }
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
