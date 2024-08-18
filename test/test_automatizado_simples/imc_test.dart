import 'dart:math';

import 'package:test/test.dart';
import 'package:teste_mocks_stubs/a_test_automatizado_simples/imc.dart';

void main() {
  late double peso;
  late double altura;
  setUp(() {
    //arrenge
    peso = Random().nextInt(100).toDouble();
    altura = Random().nextInt(100).toDouble();
  });

  test('Deve efetuar o calculo do IMC', () {
    //act
    final result = calcImc(peso, altura);
    //assert

    expect(result, (peso / (altura * altura) * 100).roundToDouble() / 100);
  });

  group('teste de parametros: ', () {
    test('Deve lançar uma exception se altura for menor que 1', () {
      expect(() => calcImc(peso, 0), throwsA(isA<Exception>()));
    });
    test('Deve lançar uma exception se peso for menor que 1', () {
      expect(() => calcImc(0, altura), throwsA(isA<Exception>()));
    });
  });
}
