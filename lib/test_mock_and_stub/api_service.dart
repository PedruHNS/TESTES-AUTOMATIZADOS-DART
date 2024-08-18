import 'package:teste_mocks_stubs/test_mock_and_stub/product_model.dart';
import 'package:teste_mocks_stubs/test_mock_and_stub/rest_client.dart';

class ApiService {
  final RestClient client;

  ApiService({required this.client});

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await client.get('/product');
      final result = response.data as List;
      return result.map((json) => ProductModel.fromJson(json)).toList();
    } on RestError catch (_) {
      return [];
    }
  }
}
