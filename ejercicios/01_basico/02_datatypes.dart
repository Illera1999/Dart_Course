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



  // ==== List
  // List<String> villanosDeprecated = new List();
  List<String> villanos = ['Lex', 'Red Skull', 'Doom']; // Son base 0
  //                       0        1            2

  villanos[0] = 'Darth Vader';
  villanos.add('Darth Vader');

  villanos = villanos.toSet().toList();
  // Se elimina el elemento si ya existe en la lista

  print(villanos);


  // ==== Set
  Set<String> villanosSet2 = {'Lex', 'Red Skull', 'Doom'};

  villanosSet2.add('Darth Vader');
  villanosSet2.add('Darth Vader'); // El duene no se agrega
                                    // porque ya existe
                                    // Los set no tienen duplicados.

  print(villanosSet2);

  // ==== Map
  Map<String, dynamic> ironMan = {
    'name': 'Tony Stark',
    'age': 45,
    'job': 'Iron Man',
    'weapon': 'Iron Man Suit',
  };

  Map<int, dynamic> capitan = new Map();

  print(ironMan);
  print(ironMan['name']);
  print(ironMan['age']);


  ironMan.addAll({
    'powers': ['super strength', 'invulnerability'],
  });


  // capitan.addAll(ironMan);


  print(capitan);
  print(ironMan);
}