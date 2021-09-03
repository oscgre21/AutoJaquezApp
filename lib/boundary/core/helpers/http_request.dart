import 'dart:convert';
import 'package:autojaquezapp/boundary/core/helpers/IRequestApi.dart';
import 'package:dartz/dartz.dart';

import '../util/Urls.dart';
import '../../../domain/core/request/client_response.dart';
import 'package:http/http.dart' as http;

import 'IRequestFailure.dart';

class HttpRequest extends IRequestApi {
  /*Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  }; */

  Future<Either<IRequestFailure, ClientResponse>> get<J>(
      String endPointAction, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.get(
        url,
        headers: Urls.headers,
      );

      if (response.statusCode == 200) {
        retorno.success = true;
        retorno.dynamicResult = response.body;
        return right(retorno);
      } else {
        if (response.statusCode == 401) {
          retorno.success = false;
          retorno.mensaje = "unauthorized " + response.statusCode.toString();
          return left(IRequestFailure.unauthorized(retorno));
        } else {
          retorno.success = false;
          retorno.mensaje = "Network error";
        }
        return left(IRequestFailure.serverError(retorno));
      }
    } catch (e) {
      retorno.success = false;
      retorno.mensaje = "Network error=>" + e.toString();
    }
    return left(IRequestFailure.serverError(retorno));
  }

  Future<Either<IRequestFailure, ClientResponse>> post<J>(
      String endPointAction, J data) async {
    var retorno = new ClientResponse();
    retorno.success = false;

    try {
      // final _object = (data as IJsonToObject);
      Urls.headers['Content-Type'] = 'application/json';
      var url = Uri.parse(Urls.ROOT_URL + endPointAction);
      final response = await http.post(
        url,
        headers: Urls.headers,
        body: json.encode(data),
      );

      if (response.statusCode == 200) {
        // final decodedData = json.decode(response.body);
        retorno.success = true;
        retorno.dynamicResult = response.body;
        return right(retorno);
      } else {
        if (response.statusCode == 401) {
          retorno.success = false;

          retorno.mensaje = "unauthorized " + response.statusCode.toString();
          return left(IRequestFailure.unauthorized(retorno));
        }
      }
    } catch (e) {
      retorno.success = false;
      retorno.mensaje = "Network error=>" + e.toString();
    }
    return left(IRequestFailure.serverError(retorno));
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
}
