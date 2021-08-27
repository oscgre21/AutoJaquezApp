import 'util/Urls.dart';
import '../../domain/entity/orders/OrderSummary.dart';
import '../../domain/entity/products/Products.dart';
import 'package:flutter/cupertino.dart';

import 'helpers/http_request.dart';

class SessionProvider with ChangeNotifier {
  static int _totalBadge = 0;
  static double _totalPrices = 0;
  static String _totalPricesPrice = "0.0";

  int? get totalCarrito => _orders.items == null
      ? 0
      : _orders.items.fold(0, (i, e) => i! + e.quantity!);

  OrderSummary _orders = new OrderSummary(items: []);

  OrderSummary get orderSumarry => _orders;

  double get totalPrices => _totalPrices;
  String get totalPricesFormat => _totalPricesPrice;

  static bool _loadingAgregarCarrito = false;
  bool get loadingAgregarCarrito => _loadingAgregarCarrito;

  static bool _firstload = false;

  void addToCart(Products product) async {
    _loadingAgregarCarrito = true;
    notifyListeners();
    HttpRequest rq = new HttpRequest();
    var rt = await rq.post(
        'addproducttocart/details/${product.id}/1', "EnteredQuantity=1");
    getListCart();
    _loadingAgregarCarrito = false;

    notifyListeners();
  }

  void addQuantity(int index) async {
    _loadingAgregarCarrito = true;
    notifyListeners();
    _orders.items[index].quantity = (_orders.items[index].quantity)! + 1;
    HttpRequest rq = new HttpRequest();
    var info = {};
    //${_orders.items[index].id}
    info["itemquantity"] = _orders.items[index].quantity.toString();
    info["productid"] = _orders.items[index].id;

    //"itemquantity${_orders.items[index].id}=${_orders.items[index].quantity}&updatecart=Actualizar"
    var rt = await rq.postApi('api/v1/increaseQuantity', info);
    getListCart();
    _loadingAgregarCarrito = false;
    //   _orders.items[index].quantity = _orders.items[index].quantity + 1;
    notifyListeners();
  }

  void removeQuantity(int index) async {
    _loadingAgregarCarrito = true;
    notifyListeners();
    _orders.items[index].quantity = (_orders.items[index].quantity)! - 1;

    HttpRequest rq = new HttpRequest();
    var info = {};
    //${_orders.items[index].id}
    info["itemquantity"] = _orders.items[index].quantity.toString();
    info["productid"] = _orders.items[index].id;
    //"itemquantity${_orders.items[index].id}=${_orders.items[index].quantity}&updatecart=Actualizar"
    var rt = await rq.postApi('api/v1/increaseQuantity', info);
    if (_orders.items[index].quantity == 0) {
      _orders.items.remove(_orders.items[index]);
    }
    getListCart();
    _loadingAgregarCarrito = false;
    notifyListeners();
  }

  void getListCart() async {
    HttpRequest rq = new HttpRequest();
    var rt = await rq.get('api/v1/cartList', "", null);

    if (rt.success) {
      _orders = OrderSummary.fromJson(rt.dynamicResult);
      _totalPrices = _orders.totalPrice!;
      _totalPricesPrice = _orders.totalPriceFormat!;
      /*
      _orders.items.forEach((v) {
        _totalPrices = _totalPrices + double.parse(v.);
      });*/
    }
    notifyListeners();
  }

  void doLogin() async {
    HttpRequest rq = new HttpRequest();
    var datal = {"user": "oscgre21@gmail.com", "password": "msf1ss@"};
    // http://10.8.0.4:5001/api/login?user=oscgre21@gmail.com&password=msf1ss@
    var rt = await rq.postLogin('api/v1/Login', datal);

    if (rt.success) {
      getListCart();
    }
    notifyListeners();
  }

  void firstListCart() async {
    if (!_firstload) {
      await Urls.initSharePreference();
      getListCart();
      _firstload = true;
    }
  }
}
