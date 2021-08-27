import 'package:autojaquezapp/application/order/OrderProviderNotifier.dart';
import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';

import '../../core/SessionProvider.dart';
import '../pages/login/AppSignIn.dart';
import '../pages/shopping_car/ShoppingCartScreen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

PreferredSize appBarWidget(context) {
  var appState = Provider.of<OrderProviderNotifier>(context);
  var list = [1];
  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        elevation: 1.0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/ic_app_icon.jpg",
          width: 80,
          height: 40,
        ),
        actions: <Widget>[
          ChangeNotifierProvider<SessionProvider>(
            create: (_) => new SessionProvider(),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppSignIn()));
              },
              icon: Icon(
                FontAwesomeIcons.search,
                size: 16,
              ),
              color: Color(0xFF323232),
            ),
          ),
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              appState.totalCarrito.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  appState.getListCart();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoppingCartScreen(),
                      ));
                }),
          ),
          appState.isAuth
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.loginPage);
                  },
                  icon: Icon(
                    FontAwesomeIcons.powerOff,
                    size: 16,
                  ),
                  color: Color(0xFF323232),
                )
              : ChangeNotifierProvider(
                  create: (_) => new SessionProvider(),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AppSignIn()));
                    },
                    icon: Icon(
                      FontAwesomeIcons.user,
                      size: 16,
                    ),
                    color: Color(0xFF323232),
                  ),
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(appState.fullName)],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ));
}

PreferredSize appBarOptionalWidget(context) {
  //var appState = Provider.of<OrderProviderNotifier>(context);

  return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: AppBar(
        elevation: 1.0,
        centerTitle: true,
        title: Image.asset(
          "assets/images/ic_app_icon.jpg",
          width: 80,
          height: 40,
        ),
      ));
}
