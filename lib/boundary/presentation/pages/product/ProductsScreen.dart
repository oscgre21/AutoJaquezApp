import 'dart:convert';

import '../../../core/util/Urls.dart';
import '../../widgets/AppBarWidget.dart';
import '../../widgets/CircularProgress.dart';
import '../../widgets/GridTilesProducts.dart';
import '../../../../domain/entity/ProductsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductsScreen extends StatefulWidget {
  String name;
  String slug;

  ProductsScreen({Key? key, @required required this.name, required this.slug})
      : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ProductListWidget(
            slug: widget.slug,
          )),
    );
  }
}

class ProductListWidget extends StatelessWidget {
  String slug;

  ProductListWidget({Key? key, required this.slug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProductList(slug, false),
      builder: (context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return CircularProgress();
          default:
            if (snapshot.hasError)
              return Text('Error: ${snapshot.error}');
            else
              return createListView(context, snapshot);
        }
      },
    );
  }
}

late ProductsModels? products;

Future<ProductsModels?> getProductList(String slug, bool isSubList) async {
  if (isSubList) {
    products = null;
  }
  if (products == null) {
    Response response;
    var url = Uri.parse(Urls.ROOT_URL + slug);
    response = await get(url);
    int statusCode = response.statusCode;
    final body = json.decode(response.body);
    if (statusCode == 200) {
      products = ProductsModels.fromJson(body);
      return products;
    } else {
      return products = ProductsModels(results: []);
    }
  }
  return products;
}

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  ProductsModels values = snapshot.data;
  List<Results> results = values.results;
  return GridView.count(
    crossAxisCount: 2,
//    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 12.0,
    children: List<Widget>.generate(results.length, (index) {
      return GridTile(
          child: GridTilesProducts(
        name: results[index].name!,
        imageUrl: results[index].imageUrls![0],
        slug: results[index].slug!,
        price: results[index].maxPrice!,
        fromSubProducts: false,
      ));
    }),
  );
}
