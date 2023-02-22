import 'dart:io';

void main() {
  stdout.write('Informe as horas: ');
  int horas = int.parse(stdin.readLineSync()!);

  stdout.write('Informe os minutos: ');
  int minutos = int.parse(stdin.readLineSync()!);

  stdout.write('Informe os segundos: ');
  int segundos = int.parse(stdin.readLineSync()!);

  int totalSegundos = horas * 3600 + minutos * 60 + segundos;

  print('O total de segundos é: $totalSegundos');
}
