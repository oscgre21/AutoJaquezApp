import "custom_properties.dart";

class GiftCard {
  bool? isGiftCard;
  String? recipientName;
  String? recipientEmail;
  String? senderName;
  String? senderEmail;
  String? message;
  int? giftCardType;
  CustomProperties? customProperties;

  GiftCard(
      {this.isGiftCard,
      this.recipientName,
      this.recipientEmail,
      this.senderName,
      this.senderEmail,
      this.message,
      this.giftCardType,
      this.customProperties});

  factory GiftCard.fromJson(Map<String, dynamic> json) {
    return GiftCard(
      isGiftCard: json['IsGiftCard'],
      recipientName: json['RecipientName'],
      recipientEmail: json['RecipientEmail'],
      senderName: json['SenderName'],
      senderEmail: json['SenderEmail'],
      message: json['Message'],
      giftCardType: json['GiftCardType'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsGiftCard'] = this.isGiftCard;
    data['RecipientName'] = this.recipientName;
    data['RecipientEmail'] = this.recipientEmail;
    data['SenderName'] = this.senderName;
    data['SenderEmail'] = this.senderEmail;
    data['Message'] = this.message;
    data['GiftCardType'] = this.giftCardType;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
