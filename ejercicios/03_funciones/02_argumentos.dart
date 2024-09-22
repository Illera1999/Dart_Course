

void saludar( String mensaje, 
  {String nombre = '<Inserte Nombre>',
  int edad = 20,
  } ){
  print('$mensaje $nombre $edad');
}


void main(List<String> args) {
  

  saludar('Hola', nombre: 'Jose', edad: 25);

}