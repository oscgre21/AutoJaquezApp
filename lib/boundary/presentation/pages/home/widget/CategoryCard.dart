import 'dart:math';

import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:autojaquezapp/domain/entity/products/Category_model.dart';
import 'package:autojaquezapp/domain/products/entity/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final Product product;

  const CategoryCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      margin: EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundColor: KArray[Random().nextInt(6)],
            child: SvgPicture.asset(
              product.icon,
              color: Colors.white,
              width: 25.0,
            ),
          ),
          Text(
            product.Name,
            style: kTitleItem,
          ),
          Text(
            product.Description,
            style: kSubtitleItem,
          ),
        ],
      ),
    );
  }
}
