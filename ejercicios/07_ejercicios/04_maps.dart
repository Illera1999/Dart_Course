
void main(List<String> args) {
  
  final persona = {
    'nombre': 'Jose',
    'apellido': 'Illera',
    'edad': 24,
  };

  final direccion = {
    'ciudad': 'Av. de la Independencia',
    'pais': 'España',
  };


  print('Persona: ${persona}');
  print('Lenght: ${persona.length}');
  print('keys: ${persona.keys}');
  print('values: ${persona.values}');

  persona.addAll(direccion);

  print('AddAll: ${persona}');

  // persona.remove('pais');

  print('Remove: ${persona}');

  // persona.removeWhere((key, value) => key != 'nombre');

  print('RemoveWhere: ${persona}');

  persona.forEach((key, value) => print('$key: $value'));

  final nuevoMapa = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('Map: ${nuevoMapa}');

}