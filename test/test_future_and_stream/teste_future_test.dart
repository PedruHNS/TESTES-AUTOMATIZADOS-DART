import 'package:test/test.dart';
import 'package:teste_mocks_stubs/b_test_future_and_stream/testes_future.dart';

void main() {
  group('testando futures | ', () {
    test('verifica se o future deu erro', () {
      final future = getFutureList();
      expect(future, throwsA(isA<Exception>()));
    });

    test('verifica se a requisição retornou uma lista de String', () {
      final future = getFutureList();
      expect(
        future,
        completion(isA<List<String>>()),
      );
    });

    test('verifica se a requisição foi completada', () {
      final future = getFutureList();
      expect(future, completes);
    });
  });
}
