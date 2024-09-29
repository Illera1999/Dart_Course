

void saludar( String mensaje, 
  {String nombre = '<Inserte Nombre>',
  int edad = 20,
  } ){
  print('$mensaje $nombre $edad');
}


void main(List<String> args) { 
  saludar('Hola', nombre: 'Jose', edad: 25);
  saludar2('Saludos2 :', nombre : 'Marta', edad: 30);

}

void saludar2(
  String mensaje, 
  {
  required String nombre, 
  int edad = 10
}){
  print('Saludar2: $mensaje $nombre $edad');
}