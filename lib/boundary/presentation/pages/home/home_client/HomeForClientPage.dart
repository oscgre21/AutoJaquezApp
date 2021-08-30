import 'package:autojaquezapp/application/auth/auth_bloc.dart';
import 'package:autojaquezapp/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:autojaquezapp/boundary/presentation/pages/home/widget/CategoryCard.dart';
import 'package:autojaquezapp/boundary/presentation/pages/home/widget/CustomListTitleWidget.dart';
import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';
import 'package:autojaquezapp/domain/entity/products/Category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

import '../../../../../injection.dart';

class HomeForClientPage extends StatefulWidget {
  HomeForClientPage({Key? key}) : super(key: key);

  @override
  _HomeForClientPageState createState() => _HomeForClientPageState();
}

class _HomeForClientPageState extends State<HomeForClientPage> {
  late AuthBloc signIn;

  _HomeForClientPageState() {
    signIn = getIt<AuthBloc>(); // Provider.of<AuthBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    signIn.add(const AuthEvent.authCheckRequest());

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: signIn,
      listener: (context, state) {
        state.map(
          (value) => () {},
          authenticated: (_) async {
            print("authenticated done");
            // await Navigator.of(context).pushNamed(AppRoutes.homePage);
          },
          unauthenticated: (_) async {
            print("unauthenticated done");
            await Navigator.of(context).popAndPushNamed(AppRoutes.loginPage);
          },
        );
      },
      builder: (context, state) {
        return _HomeMenu(context);
      },
    );
  }

  Widget _HomeMenu(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  padding: EdgeInsets.only(bottom: 50.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/barbershop_cover.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        backgroundColor: Colors.black.withOpacity(.0),
                        elevation: 0.2,
                        leading: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        actions: [
                          IconButton(
                            onPressed: () {
                              print("SignedOut");
                              signIn.add(const AuthEvent.signedOut());
                            },
                            icon: Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Buscar en la lista",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Colors.white.withOpacity(.9),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Buscar por articulos",
                              hintStyle: kHintStyle,
                              icon: Icon(Icons.search)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              CustomListTitleWidget(title: "Nuestros Servicios"),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      var category = categoryList[index];
                      return CategoryCard(category: category);
                    }),
              ),
              SizedBox(
                height: 25.0,
              ),
              CustomListTitleWidget(title: "Categorias Top"),
            ],
          ),
        ),
      ),
    );
  }
}
