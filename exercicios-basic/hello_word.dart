import 'dart:io';

void main(List<String> args) {
  print('olá mundo');
  // print("Digite sua idade: ");
  // String? testando = stdin.readLineSync();
  // stdout.write(testando);
  stdout.writeln("Enter your name : ");
  var name = stdin.readLineSync();
  stdout.write(name);
}
