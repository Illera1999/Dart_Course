main() {

  // Números
  // int
  var a = 1;
  int _a = 1;
  // double
  var b = 1.0;
  double $b = 1.0;

  // No puedo imprimir variables vacias
  // pero puedo usar late para que una variable 
  // tenga los datos más tarde y tambien se puede decir que 
  // que c sea nulo.
  int? c;

  // no puede sew un int, la suma da con decimales
  // var resultado = _a + $b;
  double resultado = _a + $b;

  print(resultado);
  print(c);
  print(a);
  print(b);


  // ==== String 
  String nombre = 'Tony';
  String apellido = 'Stark';
  String nombre1 = "Tony";
  // String nombre2;
  // String nombre3 = '0\'Connor';
  String nombre3 = "0\'Connor";
  String multilineas = '''
    Hola Mundo!
    Esto es una prueba de como funcina el 
      salto de linea.
  ''';
  String nombreCompleto = '$nombre $apellido';

  print(nombre);
  // print(nombre2); // No se puede

  print(null);
  print(nombre == nombre1);
  print(nombre3);
  print(multilineas);
  print(nombreCompleto);

  // ==== Boolean 
  bool? isActive; // Se puede 
  bool? active = true;
  bool isNotActive = !active;
  print('prueba isActive: $isActive');
  print('prueba active: $active');
  print('prueba isNotActive: $isNotActive');
}