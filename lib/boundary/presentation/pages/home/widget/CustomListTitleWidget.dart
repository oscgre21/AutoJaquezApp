import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:flutter/material.dart';

class CustomListTitleWidget extends StatelessWidget {
  final String title;
  const CustomListTitleWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle,
          ),
          Text(
            "Ver todo",
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
