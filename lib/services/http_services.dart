import 'dart:convert';

import 'package:flutter_app_from_scheme/data_models/app_model.dart';
import 'package:http/http.dart' as http;

class HttpServices {
  static const baseUrl = "";

  static Future<App> getAppData() async {
    var response = await http.post(Uri.parse(baseUrl));

    return App.fromData(json.decode(response.body));
  }
}
