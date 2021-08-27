import '../shoppingScreen/ShoppingDetailScreen2.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/VerticalListViewCarWidget.dart';
import 'package:autojaquezapp/application/order/OrderProviderNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return EmptyShoppingCartScreen();
  }
}

class EmptyShoppingCartScreen extends StatefulWidget {
  @override
  _EmptyShoppingCartScreenState createState() =>
      _EmptyShoppingCartScreenState();
}

class _EmptyShoppingCartScreenState extends State<EmptyShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<OrderProviderNotifier>(context);
    Size size = MediaQuery.of(context).size;
    //appState.getListCart();
    return Scaffold(
        backgroundColor: Color(0xFFfafafa),
        appBar: appBarOptionalWidget(context),
        body: Container(
          width: size.width,
          height: size.height - 130,
          decoration: BoxDecoration(color: Colors.white),
          child: appState.totalCarrito == 0
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                      child: Container(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: Image.asset(
                        "assets/images/empty_shopping_cart.png",
                        height: 250,
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Container(
                      child: Text(
                        "You haven't anything to cart 2",
                        style: TextStyle(
                          color: Color(0xFF67778E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              : Column(children: <Widget>[
                  Expanded(
                    child: VerticalListViewCarWidget(
                      title: Text("Testing"),
                      listProvider: appState.orderSumarry,
                      filter: '',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 20),
                    color: Color(0xFFFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("ORDEN TOTAL ".toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF565656))),
                        Text("RD${appState.totalPricesFormat}",
                            style: TextStyle(
                                color: Color(0xFFf67426),
                                fontFamily: 'Roboto-Light.ttf',
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )
                ]),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.all(5.0),
          height: 60.0,
          width: double.infinity,
          child: appState.totalCarrito! > 0
              ? RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingDetailScreen2()),
                    );
                  },
                  child: Text(
                    "Ordenar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins-Medium.ttf',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Color(0xFFBC1F26),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xFFBC1F26))),
                )
              : Container(),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
        ));
  }
}
