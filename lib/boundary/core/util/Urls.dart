import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Urls {
  //static const ROOT_URL = "https://autorepuestosjaquez.com/";
  static const ROOT_URL = "https://auth.oscgre.com/api/";
  //static const ROOT_URL = "https://mntt.smartgpsrd.com/";
  static Map<String, String> headers = {};
  static SharedPreferences? prefs;

  static Future<SharedPreferences?> initSharePreference() async {
    prefs = (await SharedPreferences.getInstance());
    if (prefs!.containsKey("_headers")) {
      String idata = prefs!.getString("_headers")!;
      Map<String, dynamic> data = json.decode(idata);
      if (data.length > 0) {
        data.forEach((key, value) {
          headers[key] = value.toString();
        });
      }
    }
    return prefs;
  }

  static void setAuthorizationHeader(String token) async {
    await Urls.initSharePreference();
    Urls.headers['authorization'] = "bearer " + token;
    Urls.updateHeader();
  }

  static void updateHeader() async {
    if (prefs == null) {
      prefs = await SharedPreferences.getInstance();
    }

    //  if (!prefs.containsKey("_headers")) {
    prefs?.setString("_headers", json.encode(headers));
    //}
    /*if (prefs.containsKey("_headers")) {
      var data = json.decode(prefs.getString("_headers"));
      headers = data;
    }*/
  }

  static Future<void> clearHeaders() async {
    await Urls.initSharePreference();
    Urls.headers.clear();
    Urls.updateHeader();
  }
}
