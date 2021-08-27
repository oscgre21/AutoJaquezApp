import 'dart:convert';
import 'dart:developer';
import 'package:autojaquezapp/boundary/core/util/Urls.dart';

import '../../widgets/CircularProgress.dart';
import '../../widgets/GridTilesCategory.dart';
import '../../../../domain/entity/BrandModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

late BrandModel brandModel;

class BrandHomePage extends StatefulWidget {
  String slug;
  bool isSubList;

  BrandHomePage({Key? key, required this.slug, this.isSubList = false})
      : super(key: key);
  @override
  _BrandHomePageState createState() => _BrandHomePageState();
}

class _BrandHomePageState extends State<BrandHomePage> {
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
              return createListView(context, snapshot);
        }
      },
    );
  }
}

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  BrandModel values = snapshot.data;
  List<Results> results = values.results;
  return GridView.count(
    crossAxisCount: 3,
    padding: EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 9.0,
    children: List<Widget>.generate(results.length, (index) {
      return GridTile(
          child: GridTilesCategory(
        name: results[index].name.toString(),
        imageUrl: results[index].imageUrl.toString(),
        slug: results[index].slug.toString(),
        fromSubProducts: false,
      ));
    }),
  );
}

Future<BrandModel> getCategoryList(String slug, bool isSubList) async {
  // ignore: unnecessary_null_comparison
  if (brandModel == null) {
    var url = Uri.parse(Urls.ROOT_URL + slug);
    Response response = await get(url);
    int statusCode = response.statusCode;
    var body = json.decode(response.body);
    log('${body}');
    if (statusCode == 200) {
      brandModel = BrandModel.fromJson(body);
//    brandModel = (body).map((i) =>BrandModel.fromJson(body)) ;
      return brandModel;
    }
  }
  return brandModel;
}

//https://api.evaly.com.bd/core/public/brands/?limit=20&page=1&category=bags-luggage-966bc8aac
