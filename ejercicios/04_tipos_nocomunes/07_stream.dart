import 'dart:async';

void main(List<String> args) {
  
  final streamController = StreamController<String>.broadcast();

  streamController.stream.listen(
    (event) => print('Despegando evento 1: $event'),
    onError: (error) => print('Error en el stream: $error'),
    onDone: () => print('Stream finalizado'),
    cancelOnError: false
  );


  streamController.stream.listen(
    (event) => print('Despegando evento 2: $event'),
    onError: (error) => print('Error en el stream: $error'),
    onDone: () => print('Stream finalizado'),
    cancelOnError: false
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, we have a problem!');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();

  print('Fin del main');
}