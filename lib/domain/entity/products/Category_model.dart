import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  Category(
      {required this.icon,
      required this.subtitle,
      required this.title,
      required this.color});
}

List<Category> categoryList = [
  Category(
    icon: "assets/svg/saloon.svg",
    title: "Saloon",
    subtitle: "5",
    color: kPurple,
  ),
  Category(
    icon: "assets/svg/haircut.svg",
    title: "Haircut",
    subtitle: "59",
    color: kYellow,
  ),
  Category(
    icon: "assets/svg/palor.svg",
    title: "Palor",
    subtitle: "23",
    color: kGreen,
  ),
  Category(
    icon: "assets/svg/shampoo.svg",
    title: "Shampoo",
    subtitle: "55",
    color: kPink,
  ),
  Category(
    icon: "assets/svg/spa.svg",
    title: "Spa",
    subtitle: "15",
    color: kIndigo,
  ),
];
