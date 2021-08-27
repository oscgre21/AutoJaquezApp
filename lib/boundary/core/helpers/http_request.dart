import 'dart:convert';
import 'package:autojaquezapp/domain/core/IRequestApi.dart';

import '../util/Urls.dart';
import '../../../domain/core/request/client_response.dart';
import 'package:http/http.dart' as http;

class HttpRequest extends IRequestApi {
  /*Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  }; */

  Future<ClientResponse> get<J>(
      String endPointAction, String auth_token, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      /*_headers['Authorization'] = auth_token;
      if (auth_token != "") {
        auth_token = "&token=" + auth_token;
      }*/

      //final _object = (data as IJsonToObject);
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.get(
        url,
        headers: Urls.headers,
      ); //body: json.encode(_object.toJson())
      if (Urls.headers.length == 0) {
        Urls.headers = response.headers;
        Urls.headers['cookie'] = response.headers['set-cookie'].toString();
        updateCookie(response.headers);
      }

      // print(response.headers['set-cookie']);
      //  print(Urls.headers);
      //print(json.encode(_object.toJson()));
      //print(response.headers['set-cookie']);

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        retorno.success = true;
        retorno.dynamicResult = decodedData;
      } else {
        retorno.success = false;
      }
    } catch (e) {
      retorno.success = false;
    }
    return retorno;
  }

  Future<ClientResponse> post<J>(String endPointAction, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      // final _object = (data as IJsonToObject);
      Urls.headers['Content-Type'] = 'application/x-www-form-urlencoded';
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.post(url,
          headers: Urls.headers,
          body: data); //body: json.encode(_object.toJson())
      if (Urls.headers.length == 0) {
        Urls.headers = response.headers;
        //   print(response.headers['set-cookie']);
        Urls.headers['cookie'] = response.headers['set-cookie'].toString();
        Urls.headers.remove("set-cookie");
      }

      //   updateCookie(response);

      // print(response.headers['set-cookie']);
      //print(Urls.headers);
      //print(json.encode(_object.toJson()));
      //print(response.headers['set-cookie']);

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        retorno.success = true;
        retorno.dynamicResult = decodedData;
      } else {
        retorno.success = false;
      }
    } catch (e) {
      retorno.success = false;
    }
    return retorno;
  }

  Future<ClientResponse> postApi<J>(String endPointAction, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      // final _object = (data as IJsonToObject);
      Urls.headers['Content-Type'] = 'application/json';
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.post(url,
          headers: Urls.headers,
          body: json.encode(data)); //body: json.encode(_object.toJson())
      if (Urls.headers.length == 0) {
        Urls.headers = response.headers;
        //   print(response.headers['set-cookie']);
        Urls.headers['cookie'] = response.headers['set-cookie'].toString();
        Urls.headers.remove("set-cookie");
      }

      //   updateCookie(response);

      // print(response.headers['set-cookie']);
      //print(Urls.headers);
      //print(json.encode(_object.toJson()));
      //print(response.headers['set-cookie']);

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        retorno.success = true;
        retorno.dynamicResult = decodedData;
      } else {
        retorno.success = false;
      }
    } catch (e) {
      retorno.success = false;
    }
    return retorno;
  }

  Future<ClientResponse> postLogin<J>(String endPointAction, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      // final _object = (data as IJsonToObject);
      Urls.headers['Content-Type'] = 'application/json';
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.post(url,
          headers: Urls.headers,
          body: json.encode(data)); //body: json.encode(_object.toJson())

      //   updateCookie(response);

      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);

        Urls.headers = response.headers;
        //   print(response.headers['set-cookie']);
        Urls.headers['cookie'] = response.headers['set-cookie'].toString();
        Urls.headers.remove("set-cookie");
        Urls.updateHeader();

        retorno.success = true;
        retorno.dynamicResult = decodedData;
      } else {
        retorno.success = false;
      }
    } catch (e) {
      retorno.success = false;
    }
    return retorno;
  }

  void updateCookie(Map<String, String> headers) {
    String rawCookie =
        headers['set-cookie'].toString().replaceAll(".Nop.Customer=;", "");

    Urls.headers.remove("set-cookie");
    if (rawCookie != null) {
      //    int index = rawCookie.indexOf(';');
      Urls.headers['cookie'] = rawCookie;
      // (index == -1) ? rawCookie : rawCookie.substring(0, index);
      // print(Urls.headers);
      Urls.updateHeader();
    }
  }
  //7d5b821a-c71e-4e77-bacf-ac8c4dab402f
}
