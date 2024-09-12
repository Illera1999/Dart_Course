import 'dart:io';

void main(List<String> args) {

  stdout.write('¿Cuál es tu edad?: ');
  int edad = int.parse(  stdin.readLineSync() ?? '0');

  stdout.writeln('Tu edad es $edad');
  if(edad >= 21){
    stdout.writeln('Eres ciudadano');
  }else if(edad >= 18){
    stdout.writeln('Eres mayor de edad');
  }else{
    stdout.writeln('Eres menor de edad');
  }
  // Este código es equivalente a lo anterior
  // if(edad >= 21){
  //   stdout.writeln('Eres ciudadano');
  // }else{
  //   if(edad >= 18){
  //     stdout.writeln('Eres mayor de edad');
  //     return;
  //   }
  //   stdout.writeln('Eres menor de edad');
  // }
}

/*
  Crear un programa en dart que:
  - Si eres mayor o igual a 21 años, muestra la palabra 'ciudadano'.
  - Si estás entre 18 y 20 años, muestra la palabra 'Mayor de edad'.
  - Si eres menor de 18 años, muestra la palabra 'menor de edad'.
*/