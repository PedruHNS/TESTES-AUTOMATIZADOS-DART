# teste de Unidades com Dart

### Estrutura de testes
No teste de unidade temos 3 etapas:
- **Arrange**: É a parte onde preparamos tudo que é necessário para rodar os testes, como:
    - Variáveis
    - Instâncias de classes
    - Mocks
    - etc.</br>
    **Exemplo**:
    ```Dart 
    final variavel = 1;
    final instancia = Classe();
    ```
    
    O objetivo é deixar o ambiente de teste o mais próximo possível do ambiente real.
- **Act**: É a parte em que você deseja executar a ação que deseja testar, geralmente para fazer essa etapa iremos chamar um método ou função.</br>
    **Exemplo**:
    ```Dart
    final resultado = classe.metodo(variavel); //executa a ação
    ```
    O objetivo é executar a ação que desejamos testar.
- **Assert**: É a etapa final do nosso teste de unidade, onde verificamos o resultado obtido pela ação que executamos. e utilizamos o expect para verificar se o resultado é o esperado.</br>
    **Exemplo**:
    ```Dart
    expect(resultado atual, resultado esperado); //verifica se o resultado é o esperado
    ```
    O objetivo é verificar se o resultado obtido é o esperado.



### Estrutura completa do teste
```Dart
main() {
  test('nome intuitivo no que estamos testando', () {
    //arrange (preparação)
    final variavel = 1;
    final instancia = Classe();
    //act (execução)
    final valor = instancia.metodo(variavel);
    //assert (verificação)
    expect(valor, equals(esperado));
  });
}
```
### expect
O expect é uma função que verifica se o resultado obtido é o esperado, ele recebe dois parâmetros:
- **resultado atual**: é o resultado obtido pela ação que executamos.
- **resultado esperado**: é o resultado que esperamos obter. conhecido também como **matcher**.

### Matchers
Matchers são funções que verificam se o resultado atual é o esperado, alguns exemplos de matchers são:
- **Core Matchers**: 
    - **equals**: verifica se o resultado é igual ao esperado.</br>
    `expect(actual, equals(expected));`
    - **isNull**: verifica se o resultado é nulo.</br>
    `expect(actual, isNull);`
    - **isNotNull**: verifica se o resultado não é nulo.</br>
    `expect(actual, isNotNull);`
    - **isTrue**: verifica se o resultado é verdadeiro.</br>
    `expect(actual, isTrue);`
    - **isFalse**: verifica se o resultado é falso.</br>
    `expect(actual, isFalse);`
    - **throwsA**: verifica se a ação lançou uma exceção.</br>
    `expect(() => someFunction(), throwsA(isA<SomeException>()));`
    - **throwsException**: verifica se a ação lançou uma exceção.</br>
    `expect(() => someFunction(), throwsException);`
- **String Matchers**:
    - **contains**: verifica se a string contém a substring.</br>
    `expect('Dart', contains('ar'));`
    - **startsWith**: verifica se a string começa com a substring.</br>
    `expect('Dart', startsWith('Da'));`
    - **endsWith**: verifica se a string termina com a substring.</br>
    `expect('Dart', endsWith('rt'));`
    - **matches**: verifica se a string corresponde a uma expressão regular.</br>
    `expect('Dart', matches(r'^[A-Z][a-z]+$'));`
- **Collection Matchers**:
    - **isEmpty**: verifica se a coleção está vazia.</br>
    `expect([], isEmpty);`
    - **isNotEmpty**: verifica se a coleção não está vazia.</br>
    `expect([1], isNotEmpty);`
    - **contains**: verifica se a coleção contém um item.</br>
    `expect([1, 2, 3], contains(2));`
    - **orderedEquals**: verifica se a coleção contém os mesmos itens na mesma ordem.</br>
    `expect([1, 2, 3], orderedEquals([1, 2, 3]));`
    - **unorderedEquals**: verifica se a coleção contém os mesmos itens, independentemente da ordem.</br>
    `expect([1, 2, 3], unorderedEquals([3, 2, 1]));`
    - **hasLength**: verifica se a coleção tem um determinado comprimento.</br>
    `expect([1, 2, 3], hasLength(3));`
- **Numeric Matchers**:
    - **greaterThan**: verifica se o número é maior que o esperado.</br>
    `expect(2, greaterThan(1));`
    - **greaterThanOrEqualTo**: verifica se o número é maior ou igual ao esperado.</br>
    `expect(2, greaterThanOrEqualTo(2));`
    - **lessThan**: verifica se o número é menor que o esperado.</br>
    `expect(1, lessThan(2));`
    - **lessThanOrEqualTo**: verifica se o número é menor ou igual ao esperado.</br>
    `expect(2, lessThanOrEqualTo(2));`
    - **closeTo**: verifica se o número está dentro de uma margem de erro.</br>
    `expect(2.0, closeTo(2.0, 0.1));`
- **Custom Matchers**:
    - anyOf: verifica se o valor é igual a qualquer um dos valores fornecidos.</br>
    `expect(2, anyOf([1, 2, 3]));`
    - allOf: verifica se o valor é igual a todos os valores fornecidos.</br>
    `expect(2, allOf([2, greaterThan(1)]));`
- **Stream Matchers**:
    - **emits**: verifica se o stream emite um item.</br>
    `expect(stream, emits(1));`
    - **emitsInOrder**: verifica se o stream emite itens na mesma ordem.</br>
    `expect(stream, emitsInOrder([1, 2, 3]));`
    - **emitsError**: verifica se o stream emite um erro.</br>
    `expect(stream, emitsError(isA<SomeException>()));`
    - **emitsDone**: verifica se o stream emite um evento de conclusão.</br>
    `expect(stream, emitsDone);`
- **Future Matchers**:
    - **completes**: verifica se o future é concluído.</br>
    `expect(future, completes);`
    - **completesWithValue**: verifica se o future é concluído com um valor.</br>
    `expect(future, completesWithValue(1));`
    - **completesWithError**: verifica se o future é concluído com um erro.</br>
    `expect(future, completesWithError(isA<SomeException>()));`
- **Type Matchers**:
    - **isA**: verifica se o valor é uma instância de uma classe.</br>
    `expect(1, isA<int>());`
    - **isInstanceOf**: verifica se o valor é uma instância de uma classe.</br>
    `expect(1, isInstanceOf<int>());`

### com Mocktail(mocks e stubs)
em breve resumo sobre mocks e stubs