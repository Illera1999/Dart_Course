import 'dart:io';

void main(List<String> args) {

  Directory actualPath = Directory.current;
  print(actualPath.path);
  
  File file = File(Directory.current.path + '\\ejercicios\\04_tipos_nocomunes\\assets\\personas.txt');

  // Future<String> f = file.readAsString();
  String line = file.readAsStringSync();
  // f.then((data) => print(data));
  // f.then(print);

  print(line);

  print('Fin del main');

}