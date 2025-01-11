import 'dart:async';
import 'package:dio/dio.dart' as don;
import '../constants/api_endpoints.dart';
import 'token_service.dart';
export 'package:dio/dio.dart';

class DioService {
  factory DioService() => _instance;
  DioService._internal();
  static final DioService _instance = DioService._internal();
  final don.Dio client = don.Dio();

  Future<void> initialize() async {
    client
      ..options.baseUrl = APIEndpoints.baseUrl
      ..interceptors.add(
        don.InterceptorsWrapper(
          onRequest: (requestOptions, requestInterceptorHandler) async {
            final token = await TokenService().getToken();
            if ((token == null || token.isEmpty)) {
              requestOptions.headers.addAll(
                <String, String>{
                  'Content-Type': 'application/json',
                  // 'Accept': 'application/json',
                },
              );
            } else {
              requestOptions.headers.addAll(
                <String, String>{
                  'Authorization': 'Token $token',
                  'Content-Type': 'application/json',
                  // 'Accept': 'application/json',
                },
              );
            }

            return requestInterceptorHandler.next(requestOptions);
          },
        ),
      );
  }
}
