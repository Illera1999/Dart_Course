


void main(List<String> args) {
  
  String nombre = 'Jose';
  String apellido = 'Illera';

  String nombreApellido = '$nombre $apellido';

  print('String: $nombreApellido');
  print('Length: ${nombreApellido.length}');

  print('Contains F: ${nombreApellido.contains('J')}');
  print('Contains F: ${nombreApellido.contains('J', 1)}');

  print('EndsWith a: ${nombreApellido.endsWith('a')}');


  print('PadLeft: ${nombreApellido.padRight(20, '.')}');

  print('Operador []: ${nombreApellido[0]}');
  print('Operador *: ${nombreApellido*2}');


  print('Replace: ${nombreApellido.replaceAll(RegExp(r'e'), 'Z')}');

  print('SubString: ${nombreApellido.substring(0, 4)}');

  print('IndexOf: ${nombreApellido.indexOf('I')}');
 
  print('Split: ${nombreApellido.split(' ')}');


  print('UpperCase the last letter: ${nombreApellido[nombreApellido.length - 1].toUpperCase()}');


}