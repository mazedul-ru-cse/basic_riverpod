import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'api_exception_handler.dart';

class BaseClient {
  Future<dynamic> postData({required payload, required String url}) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: (payload),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );
      return returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    } on TimeoutException {
      throw FetchDataException("Try again");
    }
  }
}
