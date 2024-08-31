import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:jungle_windows_application/api/base/base_api_service.dart';
import '../error_handling/exception_handling.dart';

class Api extends BaseService {
  var dio = createDio();
  static Api? _instance;

  Api._();

  static Api get instance => _instance ??= Api._();
  Set<Object>? refreshTokenResponse;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: "Globals().Url",
      receiveTimeout: Duration(seconds: 15), // 15 seconds
      connectTimeout: Duration(seconds: 15), // 15 seconds,
      sendTimeout: Duration(seconds: 15), // 15 seconds,
    ));
    return dio;
  }

  void closeAndCreateDio() {
    dio.close();
    dio = createDio();
  }

  @override
  Future<dynamic> getRequest(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) async {
    if (kDebugMode) {
      print(url);
    }
    try {
      Response response = await dio
          .get(
            baseurl + url ?? '',
            queryParameters: queryParameters,
            options: Options(headers: header),
          )
          .timeout(const Duration(seconds: 10));
      return returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
  }

  @override
  Future<dynamic> putRequest(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) async {
    if (kDebugMode) {
      print(url);
    }
    try {
      Response response = await dio
          .get(
            baseurl + url ?? '',
            queryParameters: queryParameters,
            options: Options(headers: header),
          )
          .timeout(const Duration(seconds: 10));
      return returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
  }

  @override
  Future<dynamic> postRequest(String url,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? header}) async {
    if (kDebugMode) {
      print(url);
    }
    try {
      Response response = await dio
          .get(
            baseurl + url ?? '',
            queryParameters: queryParameters,
            options: Options(headers: header),
          )
          .timeout(const Duration(seconds: 10));
      return returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.data);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.data);
        return responseJson;

      default:
        throw FetchDataException(
            'Error accoured while communicating with server ${response.statusCode}');
    }
  }
}
