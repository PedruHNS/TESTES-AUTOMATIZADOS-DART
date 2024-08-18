import 'package:dio/dio.dart';
import 'package:uno/uno.dart';

abstract class RestClient {
  Future<dynamic> get(String path);
}

class DioRestClient implements RestClient {
  final Dio dio;

  DioRestClient(this.dio);

  @override
  Future<dynamic> get(String path) async {
    final response = await dio.get(path);
    if (response.statusCode != 200) {
      throw RestError('Erro');
    }
    return response.data;
  }
}

class UnoRestClient implements RestClient {
  final Uno uno;

  UnoRestClient(this.uno);

  @override
  Future<dynamic> get(String path) async {
    final response = await uno.get(path);
    if (response.status != 200) {
      throw RestError('Erro');
    }
    return response.data;
  }
}

class RestError extends Error {
  final String message;

  RestError(this.message);

  @override
  String toString() {
    return message;
  }
}
