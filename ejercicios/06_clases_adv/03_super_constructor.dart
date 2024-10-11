
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  String imprimirNombre() {
    return '''
    Nombre: $nombre
    Edad: $edad''';
  }
}
  

class Cliente extends Persona {
  List ordenes = [];
  Cliente(int edadActual, String nombreActual): 
  super(nombreActual, edadActual);
}




void main(List<String> args) {

  final persona = Cliente(24, 'Jose');

  print(persona.imprimirNombre());

}