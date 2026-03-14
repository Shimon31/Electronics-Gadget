import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;
  final http.Client _httpClient;

  ApiClient({required this.baseUrl, required http.Client? httpClient})
    : _httpClient = httpClient ?? http.Client();

  Map<String, String> get _defaultHeaders => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  //reusable get api call

  Future<dynamic> get(String path, {Map<String, String>? headers}) async {
    final uri = Uri.parse("$baseUrl$path");
    final mergeHeaders = {..._defaultHeaders, ...?headers};
    final response = await _httpClient.get(uri, headers: mergeHeaders);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      return jsonDecode(response.body);
    }

    throw HttpException(
      message: "Request Failed",
      statusCode: response.statusCode,
      uri: uri,
      body: response.body,
    );
  }
}

class HttpException implements Exception {
  final String message;
  final int statusCode;
  final Uri uri;
  final String? body;

  HttpException({
    required this.message,
    required this.statusCode,
    required this.uri,
    this.body,
  });

  @override
  String toString() {
    return 'HttpException(statusCode: $statusCode, uri : $uri,message: $message,body:$body)';
  }
}
