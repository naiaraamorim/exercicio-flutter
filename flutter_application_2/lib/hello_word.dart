import 'dart:io';

void main() {
  List<double> numeros = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Informe o ${i}º número: ');
    double numero = double.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  double soma = numeros.reduce((a, b) => a + b);
  double media = soma / numeros.length;

  print('A média dos números informados é: ${media}');
}
