import 'dart:io';

void main() {
  const double tarifa_base = 4.59;
  const double tarifa_adicional = 1.30;
  const int duracao_base = 3;

  stdout.write("Digite a duração da chamada em minutos: ");
  int duracao = int.parse(stdin.readLineSync()!);

  double valor = tarifa_base;
  if (duracao > duracao_base) {
    int duracaoAdicional =
        duracao - duracao_base; // tirando os 3 minutos que custão 4.59
    double tarifaAdicional = duracaoAdicional * tarifa_adicional;
    valor += tarifaAdicional;
  }

  print("O valor total a ser pago é R\$ ${valor.toStringAsFixed(2)}");
}
