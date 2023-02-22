import 'dart:io';

void main() {
  const double aluguelPopular = 90;
  const double aluguelLuxo = 150;
  const double precoKmPopAte100 = 0.20;
  const double precoKmPopAcima100 = 0.10;
  const double precoKmLuxoAte200 = 0.30;
  const double precoKmLuxoAcima200 = 0.25;

  print("Digite o tipo de carro alugado (popular ou luxo): ");
  String tipoCarro = stdin.readLineSync()!;

  if (tipoCarro.toLowerCase() != "popular" &&
      tipoCarro.toLowerCase() != "luxo") {
    print("Tipo de carro inválido!");
    return;
  } // coloquei só pra tratamento de erro, pra caso o valor de entrada não seja 'popular' ou 'luxo'

  print("Digite a quantidade de dias de aluguel: ");
  int diasAluguel = int.parse(stdin.readLineSync()!);

  print("Digite a quantidade de quilômetros percorridos: ");
  double kmPercorridos = double.parse(stdin.readLineSync()!);

  double precoAluguel = 0;

  if (tipoCarro.toLowerCase() == "popular") {
    precoAluguel = aluguelPopular * diasAluguel;
    if (kmPercorridos <= 100) {
      precoAluguel += kmPercorridos * precoKmPopAte100;
    } else {
      precoAluguel += 100 * precoKmPopAte100;
      precoAluguel += (kmPercorridos - 100) * precoKmPopAcima100;
    }
  } else if (tipoCarro.toLowerCase() == "luxo") {
    precoAluguel = aluguelLuxo * diasAluguel;
    if (kmPercorridos <= 200) {
      precoAluguel += kmPercorridos * precoKmLuxoAte200;
    } else {
      precoAluguel += 200 * precoKmLuxoAte200;
      precoAluguel += (kmPercorridos - 200) * precoKmLuxoAcima200;
    }
  }
  print("Preço total do aluguel: R\$ $precoAluguel");
}
