import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:recycling_app/models/user.dart';

class auth {
  String baseUrl = "https://robbikya.onrender.com/api/v1/users/signUp";

  Future<String> signup({required dynamic userData}) async {
    var response = await Dio().post(baseUrl, data: userData);
    print("1");
    return response.data['token'];
    
    // Uri url = Uri.parse(baseUrl);
    // var dataa = json.encode(userData);
    // http.Response response = await http.post(url, body: dataa);
    // Map<String, dynamic> data = jsonDecode(response.body);
    // print(data);
    // return data['token'];
  }
}
