void main(List<String> args) {
  

  Future timeout = Future.delayed(Duration(seconds: 2), () { 
    if(1 == 1){ throw Exception('Error en el timeout');}
    return 'Timeout completado';
  });

  // timeout.then((value) => print('El timeout se completó con éxito'));
  timeout.then(print)
        .catchError(print);

  print('Inicio del programa');
}