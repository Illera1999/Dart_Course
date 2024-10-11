void main(List<String> args) {

  List<int> lista1 = [1,2,3,4,5];
  List<int> lista2 = [];
  List<int> lista3 = [3,1,2,15,-10];
  List<String> lista4 = ['Tony', 'Peter'];


  print('Lenght: ${lista1.length}');
  print('First: ${lista1.first}');
  print('First: ${lista1[0]}');
  print('Last: ${lista1.last}');


  print('isEmpty: ${lista1.isEmpty}');
  print('isEmpty: ${lista2.isEmpty}');

  print('asMap: ${lista1.asMap()}');
  print('asMap: ${lista1.asMap()[2]}');

  Map listaMapa = lista1.asMap();
  print('ListaMapa: ${listaMapa[4]}');


  Map nombreMapa = lista4.asMap();
  print('NombreMapa: ${nombreMapa}');
  print('NombreMapa: ${nombreMapa[0]}');

  print('indexOf: ${lista4.indexOf('Peter')}');

  // int mayor3 = lista3.indexWhere((elemento) {
  //   if(elemento > 3) return true; 
  //   return false;
  // });
  int mayor3 = lista3.indexWhere((numero) => (numero > 3) ? true : false);
  print('Mayor3: ${mayor3}');

  print('Remove: ${lista4.remove('Tony')}');
  print('Remove: ${lista4}');

  lista1.shuffle();
  print('Shuffle: ${lista1}');

  lista3.sort();
  print('Sort: ${lista3}');
  print('Reverse: ${lista3.reversed.toList()}');

  lista4.forEach((nombre){
    nombre = nombre.toUpperCase();
    print(nombre);
  });

  print('Lista4: ${lista4}');


  lista4.map((nombres) => nombres.toUpperCase()).toList();
  print('newLista4: ${lista4}');

}