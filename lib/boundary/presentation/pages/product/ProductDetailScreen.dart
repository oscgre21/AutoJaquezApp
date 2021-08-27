import 'dart:convert';

import 'package:autojaquezapp/application/order/OrderProviderNotifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entity/ProductDetails.dart';
import '../../../../domain/entity/products/Products.dart';
import '../../../../domain/entity/products/picture_models.dart';
import '../../../core/util/Urls.dart';
import '../../widgets/AppBarWidget.dart';

late ProductDetails productDetails;

class ProductDetailScreen extends StatefulWidget {
  String slug;
  Products product;

  ProductDetailScreen({
    Key? key,
    required this.slug,
    required this.product,
  }) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      appBar: appBarWidget(context),
      body: DetailScreen(
        productDetails: widget.product,
      ),
      bottomNavigationBar: BottomNavBar(
        product: widget.product,
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  Products product;

  BottomNavBar({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OrderProviderNotifier _appState =
        Provider.of<OrderProviderNotifier>(context);
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.favorite_border,
            color: Color(0xFF5e5e5e),
          ),
          Spacer(),
          _appState.loadingAgregarCarrito
              ? CircularProgressIndicator()
              : RaisedButton(
                  elevation: 0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      side: BorderSide(color: Color(0xFFfef2f2))),
                  onPressed: () {
                    _appState.addToCart(product);
                  },
                  color: Color(0xFFfef2f2),
                  textColor: Colors.white,
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                    child: Text("Agregar al carrito".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFff665e))),
                  ),
                ), /*
          RaisedButton(
            elevation: 0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                side: BorderSide(color: Color(0xFFff665e))),
            onPressed: () {},
            color: Color(0xFFff665e),
            textColor: Colors.white,
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
              child: Text("Agregar al carrito".toUpperCase(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF))),
            ),
          ),*/
        ],
      ),
    );
  }
}

Widget createDetailView(BuildContext context, AsyncSnapshot snapshot) {
  ProductDetails values = snapshot.data;
  return Text("data");
}

class DetailScreen extends StatefulWidget {
  Products productDetails;

  DetailScreen({Key? key, required this.productDetails}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          /*Image.network(
              widget.productDetails.data.productVariants[0].productImages[0]),*/
          getListImages(),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.productDetails.name.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                SizedBox(
                  height: 15,
                ),
                Html(
                  data: "${widget.productDetails.metaDescription}",
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("SKU".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                Text(widget.productDetails.sku.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFfd0100))),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF999999),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Precio".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                Text(
                    "RD${(widget.productDetails.productPrice!.price.toString() != null) ? widget.productDetails.productPrice!.price : "Unavailable"}"
                        .toUpperCase(),
                    style: TextStyle(
                        color:
                            (widget.productDetails.productPrice!.price != null)
                                ? Color(0xFFf67426)
                                : Color(0xFF0dc2cd),
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("DESCRIPCIÓN",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                SizedBox(
                  height: 15,
                ),
                Html(
                  data: "${widget.productDetails.fullDescription}",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("ESPECIFICACIÓN",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF565656))),
                SizedBox(
                  height: 15,
                ),
                /* Column(
                  children: generateProductSpecification(context),
                )*/
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getListImages() {
    List<Image> images = [];

    for (var element in widget.productDetails.pictureModels) {
      images.add(Image.network(
        element.fullSizeImageUrl.toString(),
        fit: BoxFit.contain,
        /*loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          // ignore: unnecessary_null_comparison
          //if (loadingProgress == null) return child;

          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },*/
      ));
    }
    double height = MediaQuery.of(context).size.height;

    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: height * 40 / 100,
          child: CarouselSlider(
              items: images,
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
              )),
          /*
          CarouselSlider(
            images: images,
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.2),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          ))*/
        ));

/*
  List<Widget> generateProductSpecification(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    widget.productDetails..forEach((specification) {
      Widget element = Container(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(specification.specificationName,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF444444))),
            Text(specification.specificationValue,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF212121))),
          ],
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }*/
  }

  Future<ProductDetails> getDetailData(String slug) async {
    Response response;
    var url = Uri.parse(Urls.ROOT_URL + slug);
    response = await get(url);
    int statusCode = response.statusCode;
    final body = json.decode(response.body);
    if (statusCode == 200) {
      productDetails = ProductDetails.fromJson(body);
      return productDetails;
    } else {
      return productDetails = ProductDetails();
    }
  }
}
