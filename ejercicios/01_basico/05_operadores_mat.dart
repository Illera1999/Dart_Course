/**
 * Un operador es un símbolo que le dice al compilador
 * qué debe de realizar una tarea
 *  matemática, relacional, lógica
 * y debe de producir un resultado
 */




void main(List<String> args) {
  
  int a = 10 + 5; // + 15
  a = 20 + 5; // + 25
  a = 10 * 2; // * 20


  double b = 10 / 2; // / 5
  b = 10.0 % 3; // % 1 es el resto de la división
                // de 10 entre 3

  b = -b; // Usado para cambiar el signo del valor 

  int c = 10 ~/ 3; // / 3 es el resultado de la división. (Corriente)


  int d = 1;

  d++; // Incrementa el valor de d
  d--; // Decrementa el valor de d

  d+=2; // Incrementa el valor de d por 2
  d-=2; // Decrementa el valor de d por 2

  d*=2; // Multiplica el valor de d por 2
  // d/=2; // Divide el valor de d por 2
  print(a);
  print(b);
  print(c);
  print(d);


}