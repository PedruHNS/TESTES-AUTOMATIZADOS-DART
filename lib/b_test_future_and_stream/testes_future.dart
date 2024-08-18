Future<List<String>> getFutureList() async {
  await Future.delayed(Duration(milliseconds: 500));

  return ['A', 'B', 'C'];
  // throw Exception('Erro ao buscar a lista');
}
