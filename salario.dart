import 'dart:io';

void main() {
  print('Digite o salário fixo do funcionário: ');
  double salarioFixo = double.parse(stdin.readLineSync()!);

  print('Digite o valor das vendas realizadas pelo funcionário: ');
  double valorVendas = double.parse(stdin.readLineSync()!);

  double comissao = valorVendas * 0.12;
  double salarioFinal = salarioFixo + comissao;

  print('Comissão: R\$ ${comissao.toStringAsFixed(2)}');
  print('Salário final: R\$ ${salarioFinal.toStringAsFixed(2)}');
}
