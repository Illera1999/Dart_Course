import 'dart:io';

void main(List<String> args) {
  
  // Ciclo INFINITO
  // while(true){
  //   print('Hola Mundo');
  // }


  String continuar = 'y';
  int contador = 0;
  while(continuar == 'y'){
    stdout.write('Contador: $contador\n');
    print('¿Desea continuar? (y/n): ');
    continuar = stdin.readLineSync() ?? 'n';
    if(continuar == 'n'){
      break;
    }
    contador++;
  }

}