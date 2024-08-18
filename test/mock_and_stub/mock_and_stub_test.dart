import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:teste_mocks_stubs/test_mock_and_stub/api_service.dart';
import 'package:teste_mocks_stubs/test_mock_and_stub/product_model.dart';
import 'package:teste_mocks_stubs/test_mock_and_stub/rest_client.dart';

import 'package:uno/uno.dart';

class UnoMocktail extends Mock implements RestClient {}

class DioMocktail extends Mock implements RestClient {}

class ResponseMocktail extends Mock implements Response {}

class RestErrorMocktail extends Mock implements RestError {}

void main() {
  late DioMocktail client;
  setUp(() {
    client = DioMocktail();
  });

  tearDown(() {
    reset(client);
  });

  group('testando api service | ', () {
    test('deve retornar uma lista de Product', () {
      final response = ResponseMocktail();
      when(() => response.data).thenReturn(productListJson);
      when(() => client.get(any())).thenAnswer((_) async => response);
      final service = ApiService(client: client);

      expect(
        service.getProducts(),
        completion([
          ProductModel(id: 1, title: 'title', price: 20.45),
          ProductModel(id: 2, title: 'title2', price: 15.80),
        ]),
      );
    });

    test('deve retornar uma lista vazia', () {
      final error = RestErrorMocktail();
      when(() => error.message).thenReturn('Erro');
      when(() => client.get(any())).thenThrow(error);
      final service = ApiService(client: client);

      expect(service.getProducts(), completion([]));
    });
  });
}

final productListJson = [
  {
    "id": 1,
    "title": "title",
    "price": 20.45,
  },
  {
    "id": 2,
    "title": "title2",
    "price": 15.80,
  },
];
