import 'dart:convert';
import '../../../../core/util/Urls.dart';

import '../../../widgets/CircularProgress.dart';
import '../../../widgets/GridTilesCategory.dart';
import '../../../../../domain/entity/products/Products.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

late List<Products> categories;

class ProductPage extends StatefulWidget {
  String slug;
  bool isSubList;

  ProductPage({Key? key, required this.slug, this.isSubList = false})
      : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCategoryList(widget.slug, widget.isSubList),
      builder: (context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return CircularProgress();
          default:
            if (snapshot.hasError)
              return Text('Error: ${snapshot.error}');
            else
              return createListView(context, snapshot, widget.isSubList);
        }
      },
    );
  }
}

Widget createListView(
    BuildContext context, AsyncSnapshot snapshot, bool isSubList) {
  List<Products> values = snapshot.data;
  return GridView.count(
    crossAxisCount: 3,
//    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 9.0,
    children: List<Widget>.generate(values.length, (index) {
      return GridTile(
          child: GridTilesCategory(
        name: values[index].name!,
        imageUrl: values[index].defaultPictureModel!.imageUrl!,
        slug: values[index].sku!,
        fromSubProducts: isSubList,
      ));
    }),
  );
}

Future<List<Products>> getCategoryList(String slug, bool isSubList) async {
  if (isSubList) {
    categories = [];
  }
  if (categories == null) {
    Response response;
    var url = Uri.parse(Urls.ROOT_URL + slug);
    response = await get(url);
    int statusCode = response.statusCode;
    final body = json.decode(response.body);
    if (statusCode == 200) {
      categories = (body as List).map((i) => Products.fromJson(i)).toList();

      return categories;
    } else {
      return categories = [];
    }
  } else {
    //Future<List<Products>> one()   => Future.(categories);
    return categories;
  }
}

// https://api.evaly.com.bd/core/public/categories/?parent=bags-luggage-966bc8aac     sub cate by slug
