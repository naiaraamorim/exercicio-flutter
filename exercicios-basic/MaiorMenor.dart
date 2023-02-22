// import 'dart:io';

// void main() {
//   List<int> lista;

// }

import 'dart:io';

void main() {
  int maior = 0;
  int menor = 0;
  int numero;
  bool primeiroNumero = true;

  do {
    stdout.write('Informe um número (0 para finalizar): ');
    numero = int.parse(stdin.readLineSync()!);

    if (numero != 0) {
      if (primeiroNumero) {
        // esse primeiro é apenas para colocar o primeiro número nas variáveis
        maior = numero;
        menor = numero;
        primeiroNumero = false;
      } else {
        if (numero > maior) {
          maior = numero;
        }
        if (numero < menor) {
          menor = numero;
        }
      }
    }
  } while (numero != 0);

  print('Maior número informado: $maior');
  print('Menor número informado: $menor');
}
