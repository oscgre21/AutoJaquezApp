import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 150.0,
          width: double.infinity,
          child: CarouselSlider(
              items: [
                Image.asset(
                  "assets/images/promotion__one.png",
                  height: double.infinity,
                  width: double.infinity,
                ),
                Image.asset(
                  "assets/images/promotion_two.png",
                  height: double.infinity,
                  width: double.infinity,
                ),
                Image.asset(
                  "assets/images/promotion_three.png",
                  height: double.infinity,
                  width: double.infinity,
                ),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )) /*        
           Carousel(
            images: [
              Image.asset(
                "assets/images/promotion__one.png",
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/promotion_two.png",
                height: double.infinity,
                width: double.infinity,
              ),
              Image.asset(
                "assets/images/promotion_three.png",
                height: double.infinity,
                width: double.infinity,
              ),
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.2),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )*/
          ),
    );
  }
}
