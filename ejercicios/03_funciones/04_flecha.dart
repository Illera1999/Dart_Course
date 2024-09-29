void main(List<String> args) {
   

  int a = 10, b = 20;

  int resultado = sumar(a, b);
  int resultadoflecha = sumar(a, b);

  List<int> lista = [1,2,3,4,5,6,6,7,8,9,10,10,1];

  var nuevoListado = lista.where((e) {
    return e > 4;
  });

  var nuevoListadoFlecha = lista.where((e) => e > 4);




  print (resultado);
  print (resultadoflecha);


  print(nuevoListado);
  print(nuevoListadoFlecha);
  print(lista.toSet().toList());

}

int sumar(int a, int b) {
  return a + b;
}

int sumarFlecha(int a, int b) => a + b;