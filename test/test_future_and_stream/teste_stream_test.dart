import 'package:test/test.dart';
import 'package:teste_mocks_stubs/b_test_future_and_stream/teste_stream.dart';

void main() {
  group(
    'testando streams |',
    () {
      test('verifica os elementos em ordem', () {
        final stream = getStreamList();

        expect(
            stream,
            emitsInOrder([
              'masterclass',
              'flutterando',
              'dart'
            ])); // verifica se a stream emite os valores na ordem correta
      });

      test('verifica se a stream não emite o valor python ', () {
        final stream = getStreamList();

        expect(
            stream,
            neverEmits(
                'python')); // verifica se a stream não emite o valor python
      });
    },
  );
}
