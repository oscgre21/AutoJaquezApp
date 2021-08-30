import 'package:autojaquezapp/application/auth/auth_bloc.dart';
import 'package:autojaquezapp/application/order/OrderProviderNotifier.dart';
import 'package:autojaquezapp/boundary/presentation/pages/wishlist/WishListScreen.dart';
import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';
import 'package:autojaquezapp/boundary/presentation/widgets/AppBarWidget.dart';
import 'package:autojaquezapp/boundary/presentation/widgets/BottomNavBarWidget.dart';
import 'package:autojaquezapp/boundary/presentation/widgets/DrawerWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'HomeScreen.dart';

class HomePageTab extends StatefulWidget {
  HomePageTab({Key? key}) : super(key: key);

  @override
  _TabMenuWidgetState createState() => _TabMenuWidgetState();
}

class _TabMenuWidgetState extends State<HomePageTab> {
  int _currentIndex = 0;

  final List<Widget> viewContainer = [
    HomeScreen(),
    WishListScreen(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        state.map(
          (value) => () {},
          authenticated: (_) async {
            print("authenticated done");
            //  await Navigator.of(context).pushNamed(AppRoutes.homePage);
          },
          unauthenticated: (_) async {
            print("unauthenticated done");
            await Navigator.of(context).pushNamed(AppRoutes.loginPage);
          },
        );
      },
      child: Container(
        color: Colors.white,
        child: tabWidget(context),
      ),
    );
  }

  Widget tabWidget(BuildContext context) {
    var appState = Provider.of<OrderProviderNotifier>(context);
    appState.firstListCart();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBarWidget(context),
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: IndexedStack(
            index: _currentIndex,
            children: viewContainer,
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(
          currentStateChange: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
