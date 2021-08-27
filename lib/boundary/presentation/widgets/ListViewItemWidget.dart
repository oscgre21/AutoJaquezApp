import 'package:autojaquezapp/application/product/ProductListProvider.dart';

import '../pages/product/ProductDetailScreen.dart';
import '../../../domain/entity/products/Products.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewItemWidget<T> extends StatefulWidget {
  Widget title;
  String filter;
  ProductListProvider listProvider;
  ListViewItemWidget(
      {Key? key,
      required this.title,
      required this.filter,
      required this.listProvider})
      : super(key: key);

  @override
  _ListViewItemWidgetState createState() => _ListViewItemWidgetState();
}

class _ListViewItemWidgetState extends State<ListViewItemWidget> {
//final _listProvider = new CoursesProvider(session: session);

  @override
  Widget build(BuildContext context) {
    // if (widget.filter != null) {
    widget.listProvider.requestData(widget.filter);
    // }

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 10.0,
            ),
            child: widget.title,
          ),
          Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 200.0,
              child: FutureBuilder(
                future: widget.listProvider.resourse,
                builder: (context, AsyncSnapshot snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(
                          heightFactor: 10.0,
                          widthFactor: 10.0,
                          child: CircularProgressIndicator());
                    default:
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        return listViewWidget(snapshot.data);
                      }
                  }
                },
              )),
        ],
      ),
    );
  }

  Widget getItemCard(BuildContext context, int index, Products product) {
    return Container(
      width: 170.0,
      height: 170,
      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                      product: product,
                      slug: '',
                    )),
          );
          //Navigator.pushNamed(context, "courseDetail", arguments: course);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  width: 130.0,
                  height: 130,
                  imageUrl: product.defaultPictureModel!.imageUrl.toString(),
                  imageBuilder: (context, imageProvider) => Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.fill),
                    ),
                  ),
                  placeholder: (context, url) => Center(
                      heightFactor: 10.0,
                      widthFactor: 10.0,
                      child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                )),
            SizedBox(
              height: 2,
            ),
            Text(
              "${product.name}",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
            SizedBox(
              height: 2,
            ),
            Text("${product.productPrice!.price}",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: startsWidget(product),
            ),
          ],
        ),
      ),
    );
  }

  Widget listViewWidget(List<Products> list) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            getItemCard(context, index, list[index]),
        itemCount: list.length);
  }

  List<Widget> startsWidget(Products course) {
    List<Widget> starts = [];

    for (var i = 0; i < 5; i++) {
      if (2 > i) {
        starts.add(Icon(
          Icons.star,
          color: Colors.yellow[700],
          size: 12.0,
        ));
      } else {
        starts.add(Icon(
          Icons.star,
          color: Colors.grey[300],
          size: 12.0,
        ));
      }
    }

    return starts;
  }
}
