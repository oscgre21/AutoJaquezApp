import '../../domain/entity/Address/Addresses.dart';

import '../../boundary/core/helpers/http_request.dart';

import '../../domain/entity/Address/AddressList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingProviderNotifier with ChangeNotifier {
  static int _totalBadge = 0;
  /*
  int get totalCarrito => _orders.items == null
      ? 0
      : _orders.items?.fold(0, (i, e) => i + e.quantity);

  AddressList _orders = new AddressList(); 
  AddressList get orderSumarry => _orders;*/

  static List<DropdownMenuItem> _dropaddress = [];

  List<DropdownMenuItem> get addressList => _dropaddress;
  late AddressList _address;

  static bool _isloading = false;
  bool get isloading => _isloading;

  static bool _firstload = false;

  void fillAddessList() async {
    HttpRequest rq = new HttpRequest();
    var rt = await rq.get('api/v1/getCustomerAddress', "", null);
    if (rt.success) {
      var xaddresses =
          (rt.dynamicResult as Map<String, dynamic>)['ResultObject'];
      var addList = xaddresses['Addresses'] as List;
      if (addList.length > 0) {
        _address = AddressList.fromJson(addList);
      }

      if (_address != null) {
        _dropaddress =
            _address.addresses!.map<DropdownMenuItem>((Addresses value) {
          return DropdownMenuItem(
            value: value.id.toString(),
            child: Text(
                value.city! + ", " + value.address1! + ", " + value.address2!),
          );
        }).toList();
        _dropaddress.add(DropdownMenuItem(
          value: "0",
          child: Text("Seleccionar.."),
        ));
      }
    }

    notifyListeners();
  }

  void firstListCart() async {
    /*
    if (!_firstload) {
      await Urls.initSharePreference();
      getListCart();
      _firstload = true;
    }*/
  }
}
