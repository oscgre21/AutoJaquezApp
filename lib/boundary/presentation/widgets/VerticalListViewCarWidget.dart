import 'package:autojaquezapp/application/order/OrderProviderNotifier.dart';

import '../../../domain/entity/orders/OrderItems.dart';
import '../../../domain/entity/orders/OrderSummary.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerticalListViewCarWidget<T> extends StatefulWidget {
  Widget title;
  String filter;
  OrderSummary listProvider;
  VerticalListViewCarWidget(
      {Key? key,
      required this.title,
      required this.filter,
      required this.listProvider})
      : super(key: key);

  @override
  _VerticalListViewCarWidgetState createState() =>
      _VerticalListViewCarWidgetState();
}

class _VerticalListViewCarWidgetState extends State<VerticalListViewCarWidget> {
  late OrderProviderNotifier appState;
  @override
  Widget build(BuildContext context) {
    appState = Provider.of<OrderProviderNotifier>(context);
    return Column(
      children: [
        Flexible(
          child: Padding(
              padding: EdgeInsets.only(top: 5.0, left: 3, bottom: 0),
              child: listViewWidget(widget.listProvider.items)),
        ),
      ],
    );
  }

  Widget getItemCard(BuildContext context, int index, OrderItems product) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 5.0, right: 5, left: 5, bottom: 10),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  width: 90.0,
                  height: 90.0,
                  imageUrl: product.picture!.imageUrl!,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 90,
                    height: 90,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: size.width * 0.6,
                      child: Text(
                        "${product.productName}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Precio: ${product.unitPrice}",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    SizedBox(
                      height: 7,
                    ),
                    Text("SKU: ${product.sku}",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0)),
                    SizedBox(
                      height: 2,
                    ),
                    increseButtom(product, index),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget increseButtom(OrderItems product, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 35.0,
          height: 35.0,
          child: appState.loadingAgregarCarrito
              ? CircularProgressIndicator()
              : ClipOval(
                  child: Material(
                    elevation: 10.0,
                    color: Colors.white, // button color
                    child: InkWell(
                      splashColor: Colors.red, // inkwell color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(Icons.add, size: 20)),
                      onTap: () {
                        appState.addQuantity(index);
                      },
                    ),
                  ),
                ),
        ),
        SizedBox(
          width: 5,
        ),
        Text('${product.quantity}', style: new TextStyle(fontSize: 18.0)),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 35.0,
          height: 35.0,
          child: appState.loadingAgregarCarrito
              ? CircularProgressIndicator()
              : ClipOval(
                  child: Material(
                    elevation: 10.0,
                    color: Colors.white, // button color
                    child: InkWell(
                      splashColor: Colors.red, // inkwell color
                      child: SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(
                            Icons.remove,
                            size: 20,
                          )),
                      onTap: () {
                        appState.removeQuantity(index);
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  Widget listViewWidget(List<OrderItems> list) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
            getItemCard(context, index, list[index]),
        itemCount: list.length);
  }

  List<Widget> startsWidget(OrderItems course) {
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
