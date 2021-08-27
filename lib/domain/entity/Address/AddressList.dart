import 'Addresses.dart';

class AddressList {
  List<Addresses>? addresses;

  AddressList({this.addresses});

  AddressList.fromJson(List json) {
    if (json != null) {
      addresses = [];
      for (Map<String, dynamic> address in json) {
        addresses?.add(new Addresses.fromJson(address));
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.addresses != null) {
      data['Addresses'] = this.addresses?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
