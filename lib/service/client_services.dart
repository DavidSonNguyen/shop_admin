import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart';

class AppServiceClient extends BaseClient {
  static final AppServiceClient _singleton = AppServiceClient._internal();

  factory AppServiceClient() {
    return _singleton;
  }

  AppServiceClient._internal();

  final Map<String, String> _interceptors = <String, String>{
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers':
        'Origin, Content-Type, Access-Control-Allow-Methods',
  };

  final isLocal = true;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    if (_interceptors.isNotEmpty) {
      request.headers.addAll(_interceptors);
    }
    return request.send();
  }

  Uri _uri(
    String api, [
    Map<String, dynamic>? queryParameters,
  ]) {
    return isLocal
        ? Uri.http(
            '127.0.0.1:8000',
            api,
            queryParameters,
          )
        : Uri.https(
            '127.0.0.1:8000',
            api,
            queryParameters,
          );
  }

  Future<Response> getRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return this.get(
      _uri(api, queryParameters),
      headers: headers,
    );
  }

  Future<Response> postRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return this.post(
      _uri(api, queryParameters),
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  Future<Response> putRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return this.put(
      _uri(api, queryParameters),
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  Future<Response> patchRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return this.patch(
      _uri(api, queryParameters),
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  Future<Response> deleteRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return this.delete(
      _uri(api, queryParameters),
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  Future<String> readRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return this.read(
      _uri(api, queryParameters),
      headers: headers,
    );
  }

  Future<Uint8List> readBytesRequest(
    String api, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return this.readBytes(
      _uri(api, queryParameters),
      headers: headers,
    );
  }

  void setInterceptor(Map<String, String> header) {
    _interceptors.addAll(header);
  }

  void reset() {
    _interceptors.clear();
  }
}
