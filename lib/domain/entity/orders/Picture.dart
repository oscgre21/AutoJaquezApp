import 'CustomProperties.dart';

class Picture {
  String? imageUrl;
  String? thumbImageUrl;
  String? fullSizeImageUrl;
  String? title;
  String? alternateText;
  CustomProperties? customProperties;

  Picture(
      {this.imageUrl,
      this.thumbImageUrl,
      this.fullSizeImageUrl,
      this.title,
      this.alternateText,
      this.customProperties});

  Picture.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    thumbImageUrl = json['ThumbImageUrl'];
    fullSizeImageUrl = json['FullSizeImageUrl'];
    title = json['Title'];
    alternateText = json['AlternateText'];
    customProperties = json['CustomProperties'] != null
        ? new CustomProperties.fromJson(json['CustomProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['ThumbImageUrl'] = this.thumbImageUrl;
    data['FullSizeImageUrl'] = this.fullSizeImageUrl;
    data['Title'] = this.title;
    data['AlternateText'] = this.alternateText;
    if (this.customProperties != null) {
      data['CustomProperties'] = this.customProperties?.toJson();
    }
    return data;
  }
}
