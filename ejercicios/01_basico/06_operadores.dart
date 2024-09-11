void main(List<String> args) {
  
  // Operadores de asignación
  int a = 10;


  print('======================');
  print(a);
  print('======================');


  // Operadores condicionales
  int c = 23;
  String resp = c > 10 ? 'El número es mayor a 10' : 'El número es menor a 10';

  print(resp);
  print('======================');

  // Operadores Relacionales
  // Todos retornan un valor booleano
  bool aa = 10 > 5;
  bool b = 10 < 5;
  bool cc = 10 == 5;
  bool d = 10 != 5;

  print(aa);
  print(b);
  print(cc);
  print(d);
  print('======================');


  // Operador de tipo 
  // int e = 10;
  String f = '10';

  // print(e is int);
  print(f is int);
  print('======================');
}