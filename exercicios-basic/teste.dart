import 'dart:io';

void main() {
  // Solicita cinco números ao usuário
  print('Digite cinco números:');
  double soma = 0;
  int i;

  for (i = 0; i < 5; i++) {
    print('Número ${i + 1}: ');
    double numero = double.parse(stdin.readLineSync()!);
    soma += numero;
  }

  // Calcula a média aritmética dos números
  double media = soma / 5;

  // Exibe a média aritmética dos números
  print(
      'A média aritmética dos números é ${media.toStringAsFixed(2)}'); //toStringAsFixed() definição de casa decimais desejada.
}
