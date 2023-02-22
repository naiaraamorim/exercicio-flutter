import 'dart:io';

void main() {
  print('Digite o custo do espetáculo: ');
  var custoEspetaculo = double.parse(stdin.readLineSync()!);

  print('Digite o preço do convite: ');
  var precoConvite = double.parse(stdin.readLineSync()!);

  var quantidadeConvites = (custoEspetaculo / precoConvite).ceil();

  print(
      'A quantidade mínima de convites a serem vendidos é: $quantidadeConvites');
}
