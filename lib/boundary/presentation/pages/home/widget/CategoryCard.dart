import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:autojaquezapp/domain/entity/products/Category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      margin: EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundColor: category.color,
            child: SvgPicture.asset(
              category.icon,
              color: Colors.white,
              width: 25.0,
            ),
          ),
          Text(
            category.title,
            style: kTitleItem,
          ),
          Text(
            category.subtitle,
            style: kSubtitleItem,
          ),
        ],
      ),
    );
  }
}
