import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final _dio = Dio();

  Future<Response?> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authentication = true,
  }) async {
    try {
      final response = await _dio.get(
        '${dotenv.env['BASE_URL']}$path',
        queryParameters: queryParameters,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            // 'Authorization':
            //     authentication ? 'Bearer ${_userC.getToken()}' : null
          },
        ),
      );
      return response;
    } catch (e) {
      print(e);
      throw ('Something went wrong');
    }
  }

  Future<Response> post({
    required String path,
    dynamic body,
  }) async {
    try {
      final response = await _dio.post(
        '${dotenv.env['BASE_URL']}$path',
        data: body,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'latLng': '23.90560,93.094535'
            // 'Authorization':
            //     authentication ? 'Bearer ${_userC.getToken()}' : null
          },
        ),
      );

      return response;
    } catch (e) {
      print(e);
      throw ('Something went wrong');
    }
  }
}
