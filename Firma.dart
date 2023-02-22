import 'dart:io';

void main() {
  const valorDiaria = 38.0;
  const taxaImpostoRenda = 0.06;

  stdout.write('Informe o número de dias trabalhados: ');
  int diasTrabalhados = int.parse(stdin.readLineSync()!);

  double salarioBruto = diasTrabalhados * valorDiaria;
  double impostoRenda = salarioBruto * taxaImpostoRenda;
  double salarioLiquido = salarioBruto - impostoRenda;

  print('Valor da Diária: R\$${valorDiaria.toStringAsFixed(2)}');
  print('\n');
  print('Salário bruto: R\$${salarioBruto.toStringAsFixed(2)}');
  print('Imposto de renda (6%): R\$${impostoRenda.toStringAsFixed(2)}');
  print('Salário líquido: R\$${salarioLiquido.toStringAsFixed(2)}');
}
