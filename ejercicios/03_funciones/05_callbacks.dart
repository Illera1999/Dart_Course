void main(List<String> args) {
  
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });

}

void obtenerUsuario(String s, Function callback) {

  Map usuario = {
    'id': s,
    'nombre': 'Jose',
  };

  callback(usuario);
}