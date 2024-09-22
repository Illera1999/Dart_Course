import 'dart:io';

void main(List<String> args) {
  
  // for(int i = 1; i <= 10; i++){
  //   print('Hola Mundo $i');
  // }
  
  /*
  Dato de entrada: La base de la tabla de multiplicar
  (este dato debe ser capturado por el usuario)
  ej: 2    2,4,6,8,10

  La salida esperada sería:

  2*1 = 2
  2*2 = 4
  2*3 = 6
  2*4 = 8
  ..
  2*10 = 20
  */
  RegExp isNumber = RegExp(r'^\d+$');
  stdout.write('Ingrese un número para hacer la tabla de multipolicar: ');
  String? base = stdin.readLineSync();
  while(base == null || !isNumber.hasMatch(base)){
    stdout.write('No se ha introducido un número correctamnete.\n');
    stdout.write('Ingrese la base de la tabla: ');
    base = stdin.readLineSync();
  }
  int baseNumber = int.parse(base);

  for(int i = 1; i <= 10; i++){
    stdout.write('$base * $i = ${baseNumber * i}\n');
  }
}