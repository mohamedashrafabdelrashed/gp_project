import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recycling_app/models/user.dart';

class auth {
  String baseUrl = "http://api.weatherapi.com/v1";
  String baseKey = "82bd60ca8936418d853173107232111";
  signup({required UserData userData}) async {
    Uri url =
        Uri.parse("https://documenter.getpostman.com/view/26929192/2s9Yyv9zkd/signup/$UserData");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}
