/**
 *  Este archivo contiene comentarios en Dart.
 * 
 * 
 */

void main(List<String> args) {
  
  // Este es un comentario
  int a = 10; // A debería ser 10

  /* // Comentario en bloque
  final personas = [
    // Esta es la primera persona
    'Juan', // [0]
    // Esta es la segunda persona
    'Pedro', // [1]
    // Esta es la tercera persona
    'Carlos', // [2]
  ];
  */
  saludar('Jose', 24);

}

// Nombre: El nombre de la persona que quiero.
// Edad: La edad de la persona que quiero.
/// Funciona para saludar.
/// Recibe un [nombre] y una [edad].
saludar(String nombre, int edad) {
  print('Hola $nombre! Tu edad es $edad.');
}