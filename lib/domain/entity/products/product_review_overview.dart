import "custom_properties.dart";

class ProductReviewOverview {
  int? productId;
  int? ratingSum;
  int? totalReviews;
  bool? allowCustomerReviews;
  CustomProperties? customProperties;

  ProductReviewOverview(
      {this.productId,
      this.ratingSum,
      this.totalReviews,
      this.allowCustomerReviews,
      this.customProperties});

  factory ProductReviewOverview.fromJson(Map<String, dynamic> json) {
    return ProductReviewOverview(
      productId: json['ProductId'],
      ratingSum: json['RatingSum'],
      totalReviews: json['TotalReviews'],
      allowCustomerReviews: json['AllowCustomerReviews'],
      customProperties: json['CustomProperties'] != null
          ? new CustomProperties.fromJson(json['CustomProperties'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductId'] = this.productId;
    data['RatingSum'] = this.ratingSum;
    data['TotalReviews'] = this.totalReviews;
    data['AllowCustomerReviews'] = this.allowCustomerReviews;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
