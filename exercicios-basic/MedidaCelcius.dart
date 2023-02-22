import 'dart:io';

void main() {
  stdout.write('Informe a temperatura em Fahrenheit: ');
  double fahrenheit = double.parse(stdin.readLineSync()!);

  double celsius = (fahrenheit - 32) * 5 / 9;

  print('$fahrenheit °F equivale a ${celsius.toStringAsFixed(2)} °C');
}
