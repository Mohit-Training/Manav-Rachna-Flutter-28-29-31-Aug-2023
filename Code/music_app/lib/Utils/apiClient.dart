import 'dart:convert';

import 'package:dio/dio.dart';

class ApiClient {
  Dio dio = Dio();

  ApiClient._();

  static getInstance() {
    ApiClient apiClient = ApiClient._();
    return apiClient;
  }

  get(String url) async {
    var response = await dio.get(url);
    return jsonDecode(response.data);
  }

  post(String url, Map<String, dynamic> body) async {
    var response = await dio.post(url, data: body);
    return jsonDecode(response.data);
  }
}
