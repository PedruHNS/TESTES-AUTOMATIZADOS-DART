void main(List<String> arguments) {
  final result = calcImc(56, 1.78);
  print(result);
}

double calcImc(double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw Exception('ambos os campos não podem ser menor que 0');
  }

  double imc = (peso / (altura * altura)) * 100;
  return imc.roundToDouble() / 100;
}
