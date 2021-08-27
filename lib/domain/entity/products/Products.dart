import 'default_picture_model.dart';
import 'picture_models.dart';
import 'vendor_model.dart';
import 'gift_card.dart';
import 'product_price.dart';
import 'add_to_cart.dart';
import 'breadcrumb.dart';
import 'product_review_overview.dart';
import 'custom_properties.dart';

class Products {
  bool? defaultPictureZoomEnabled;
  DefaultPictureModel? defaultPictureModel;
  List<PictureModels> pictureModels;
  String? name;
  String? shortDescription;
  String? fullDescription;
  String? metaKeywords;
  String? metaDescription;
  String? metaTitle;
  String? seName;
  int? productType;
  bool? showSku;
  String? sku;
  bool? showManufacturerPartNumber;
  String? manufacturerPartNumber;
  bool? showGtin;
  String? gtin;
  bool? showVendor;
  VendorModel? vendorModel;
  bool? hasSampleDownload;
  GiftCard? giftCard;
  bool? isShipEnabled;
  bool? isFreeShipping;
  bool? freeShippingNotificationEnabled;
  String? deliveryDate;
  bool? isRental;
  String? rentalStartDate;
  String? rentalEndDate;
  String? availableEndDate;
  int? manageInventoryMethod;
  String? stockAvailability;
  bool? displayBackInStockSubscription;
  bool? emailAFriendEnabled;
  bool? compareProductsEnabled;
  String? pageShareCode;
  ProductPrice? productPrice;
  AddToCart? addToCart;
  Breadcrumb? breadcrumb;
  ProductReviewOverview? productReviewOverview;
  bool? displayDiscontinuedMessage;
  String? currentStoreName;
  int? id;
  CustomProperties? customProperties;

  Products(
      {this.defaultPictureZoomEnabled,
      this.defaultPictureModel,
      required this.pictureModels,
      this.name,
      this.shortDescription,
      this.fullDescription,
      this.metaKeywords,
      this.metaDescription,
      this.metaTitle,
      this.seName,
      this.productType,
      this.showSku,
      this.sku,
      this.showManufacturerPartNumber,
      this.manufacturerPartNumber,
      this.showGtin,
      this.gtin,
      this.showVendor,
      this.vendorModel,
      this.hasSampleDownload,
      this.giftCard,
      this.isShipEnabled,
      this.isFreeShipping,
      this.freeShippingNotificationEnabled,
      this.deliveryDate,
      this.isRental,
      this.rentalStartDate,
      this.rentalEndDate,
      this.availableEndDate,
      this.manageInventoryMethod,
      this.stockAvailability,
      this.displayBackInStockSubscription,
      this.emailAFriendEnabled,
      this.compareProductsEnabled,
      this.pageShareCode,
      this.productPrice,
      this.addToCart,
      this.breadcrumb,
      this.productReviewOverview,
      this.displayDiscontinuedMessage,
      this.currentStoreName,
      this.id,
      this.customProperties});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      defaultPictureZoomEnabled: json['DefaultPictureZoomEnabled'],
      defaultPictureModel: json['DefaultPictureModel'] != null
          ? new DefaultPictureModel.fromJson(json['DefaultPictureModel'])
          : null,
      pictureModels: List<PictureModels>.from(
          json['PictureModels'].map((v) => new PictureModels.fromJson(v))),
      name: json['Name'],
      shortDescription: json['ShortDescription'],
      fullDescription: json['FullDescription'],
      metaKeywords: json['MetaKeywords'],
      metaDescription: json['MetaDescription'],
      metaTitle: json['MetaTitle'],
      seName: json['SeName'],
      productType: json['ProductType'],
      showSku: json['ShowSku'],
      sku: json['Sku'],
      showManufacturerPartNumber: json['ShowManufacturerPartNumber'],
      manufacturerPartNumber: json['ManufacturerPartNumber'],
      showGtin: json['ShowGtin'],
      gtin: json['Gtin'],
      showVendor: json['ShowVendor'],
      vendorModel: json['VendorModel'] != null
          ? new VendorModel.fromJson(json['VendorModel'])
          : null,
      hasSampleDownload: json['HasSampleDownload'],
      giftCard: json['GiftCard'] != null
          ? new GiftCard.fromJson(json['GiftCard'])
          : null,
      isShipEnabled: json['IsShipEnabled'],
      isFreeShipping: json['IsFreeShipping'],
      freeShippingNotificationEnabled: json['FreeShippingNotificationEnabled'],
      deliveryDate: json['DeliveryDate'],
      isRental: json['IsRental'],
      rentalStartDate: json['RentalStartDate'],
      rentalEndDate: json['RentalEndDate'],
      availableEndDate: json['AvailableEndDate'],
      manageInventoryMethod: json['ManageInventoryMethod'],
      stockAvailability: json['StockAvailability'],
      displayBackInStockSubscription: json['DisplayBackInStockSubscription'],
      emailAFriendEnabled: json['EmailAFriendEnabled'],
      compareProductsEnabled: json['CompareProductsEnabled'],
      pageShareCode: json['PageShareCode'],
      productPrice: json['ProductPrice'] != null
          ? new ProductPrice.fromJson(json['ProductPrice'])
          : null,
      addToCart: json['AddToCart'] != null
          ? new AddToCart.fromJson(json['AddToCart'])
          : null,
      breadcrumb: json['Breadcrumb'] != null
          ? new Breadcrumb.fromJson(json['Breadcrumb'])
          : null,
      productReviewOverview: json['ProductReviewOverview'] != null
          ? new ProductReviewOverview.fromJson(json['ProductReviewOverview'])
          : null,
      displayDiscontinuedMessage: json['DisplayDiscontinuedMessage'],
      currentStoreName: json['CurrentStoreName'],
      id: json['Id'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DefaultPictureZoomEnabled'] = this.defaultPictureZoomEnabled;
    if (this.defaultPictureModel != null) {
      data['DefaultPictureModel'] = this.defaultPictureModel?.toJson();
    }
    if (this.pictureModels != null) {
      data['PictureModels'] =
          this.pictureModels.map((v) => v.toJson()).toList();
    }
    data['Name'] = this.name;
    data['ShortDescription'] = this.shortDescription;
    data['FullDescription'] = this.fullDescription;
    data['MetaKeywords'] = this.metaKeywords;
    data['MetaDescription'] = this.metaDescription;
    data['MetaTitle'] = this.metaTitle;
    data['SeName'] = this.seName;
    data['ProductType'] = this.productType;
    data['ShowSku'] = this.showSku;
    data['Sku'] = this.sku;
    data['ShowManufacturerPartNumber'] = this.showManufacturerPartNumber;
    data['ManufacturerPartNumber'] = this.manufacturerPartNumber;
    data['ShowGtin'] = this.showGtin;
    data['Gtin'] = this.gtin;
    data['ShowVendor'] = this.showVendor;
    if (this.vendorModel != null) {
      data['VendorModel'] = this.vendorModel?.toJson();
    }
    data['HasSampleDownload'] = this.hasSampleDownload;
    if (this.giftCard != null) {
      data['GiftCard'] = this.giftCard?.toJson();
    }
    data['IsShipEnabled'] = this.isShipEnabled;
    data['IsFreeShipping'] = this.isFreeShipping;
    data['FreeShippingNotificationEnabled'] =
        this.freeShippingNotificationEnabled;
    data['DeliveryDate'] = this.deliveryDate;
    data['IsRental'] = this.isRental;
    data['RentalStartDate'] = this.rentalStartDate;
    data['RentalEndDate'] = this.rentalEndDate;
    data['AvailableEndDate'] = this.availableEndDate;
    data['ManageInventoryMethod'] = this.manageInventoryMethod;
    data['StockAvailability'] = this.stockAvailability;
    data['DisplayBackInStockSubscription'] =
        this.displayBackInStockSubscription;
    data['EmailAFriendEnabled'] = this.emailAFriendEnabled;
    data['CompareProductsEnabled'] = this.compareProductsEnabled;
    data['PageShareCode'] = this.pageShareCode;
    if (this.productPrice != null) {
      data['ProductPrice'] = this.productPrice?.toJson();
    }
    if (this.addToCart != null) {
      data['AddToCart'] = this.addToCart?.toJson();
    }
    if (this.breadcrumb != null) {
      data['Breadcrumb'] = this.breadcrumb?.toJson();
    }
    /*
    if (this.productTags != null) {
      data['ProductTags'] = this.productTags.map((v) => v.toJson()).toList();
    }
    if (this.productAttributes != null) {
      data['ProductAttributes'] =
          this.productAttributes.map((v) => v.toJson()).toList();
    }
    if (this.productSpecifications != null) {
      data['ProductSpecifications'] =
          this.productSpecifications.map((v) => v.toJson()).toList();
    }
    if (this.productManufacturers != null) {
      data['ProductManufacturers'] =
          this.productManufacturers.map((v) => v.toJson()).toList();
    }
    if (this.productReviewOverview != null) {
      data['ProductReviewOverview'] = this.productReviewOverview.toJson();
    }
    if (this.tierPrices != null) {
      data['TierPrices'] = this.tierPrices.map((v) => v.toJson()).toList();
    }
    if (this.associatedProducts != null) {
      data['AssociatedProducts'] =
          this.associatedProducts.map((v) => v.toJson()).toList();
    }*/
    data['DisplayDiscontinuedMessage'] = this.displayDiscontinuedMessage;
    data['CurrentStoreName'] = this.currentStoreName;
    data['Id'] = this.id;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
