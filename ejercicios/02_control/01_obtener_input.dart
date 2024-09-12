import 'dart:io';


void main(List<String> args) {
  

  // imprimir en la terminal o cmd
  stdout.write('Hola Mundo\n¿Cuál es tu nombre?: ');

  // leer la entrada del usuario
  String? nombre = stdin.readLineSync();
  // Hay que tener cuidado con el null


  stdout.write('¿Cuál es tu apellido?: ');
  String apellido = stdin.readLineSync() ?? '';

  print('Hola $nombre $apellido');

}