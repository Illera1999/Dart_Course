


void main(List<String> args) {
  

  Future timeout = Future.delayed(Duration(seconds: 2), () { 
    print('Timeout!');
    return 'Timeout completado';
  });

  // timeout.then((value) => print('El timeout se completó con éxito'));
  timeout.then(print);

  print('Inicio del programa');
}