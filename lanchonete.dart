import 'dart:io';

void main() {
  const double PRECO_REFRI = 8.0;
  const double PRECO_SALGADO = 12.0;
  const double PRECO_SORVETE = 9.0;

  stdout.write("Digite a quantidade de refrigerantes: ");
  int qtdRefri = int.parse(stdin.readLineSync()!);

  stdout.write("Digite a quantidade de salgados: ");
  int qtdSalgado = int.parse(stdin.readLineSync()!);

  stdout.write("Digite a quantidade de sorvetes: ");
  int qtdSorvete = int.parse(stdin.readLineSync()!);

  double total = qtdRefri * PRECO_REFRI +
      qtdSalgado * PRECO_SALGADO +
      qtdSorvete * PRECO_SORVETE;

  print("O valor total a ser pago é R\$ ${total.toStringAsFixed(2)}");
}
