import '../../../../application/product/ProductListProvider.dart';

import '../../widgets/ListViewItemWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var req = new ProductListProvider();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          // SearchWidget(),
          // TopPromoSlider(),
          //PopularMenu(),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: <Widget>[
              ListViewItemWidget(
                title: InkWell(
                  onTap: () {
                    req.requestData("");
                  },
                  child: Text(
                    "Nuestras ofertas",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                listProvider: req,
                filter: '',
              ),
              ListViewItemWidget(
                title: Text(
                  "Repuestos",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                listProvider: new ProductListProvider(),
                filter: '',
              ),
              ListViewItemWidget(
                title: Text(
                  "Accesorios de vehiculos",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                listProvider: new ProductListProvider(),
                filter: '',
              ),
              ListViewItemWidget(
                title: Text(
                  "4x4",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                listProvider: new ProductListProvider(),
                filter: '',
              )
            ],
          ),
        ],
      ),
    );
  }
}
