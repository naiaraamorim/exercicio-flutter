import 'dart:io';

void main() {
  int valor = int.parse(stdin.readLineSync()!);

  int notas100 = valor ~/
      100; // "~/ " é para retornar o valor inteiro da divisão arredondado para baixo
  valor %= 100; // "%=" para armazenar o resto da divisão

  int notas50 = valor ~/ 50;
  valor %= 50;

  int notas20 = valor ~/ 20;
  valor %= 20;

  int notas10 = valor ~/ 10;
  valor %= 10;

  int notas5 = valor ~/ 5;
  valor %= 5;

  int notas2 = valor ~/ 2;
  valor %= 2;

  print("Notas de 100: $notas100");
  print("Notas de 50: $notas50");
  print("Notas de 20: $notas20");
  print("Notas de 10: $notas10");
  print("Notas de 5: $notas5");
  print("Notas de 2: $notas2");
}
