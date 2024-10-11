
mixin Logger {

  void imprimir(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}


mixin Logger2 {

  void imprimir2(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}

abstract class Astro with Logger, Logger2{

  Astro(){
    imprimir2('Astro inicializado');
  }

  void comer(){
    imprimir2('Comiendo...');
  }

}

class Asteroide extends Astro with Logger, Logger2{

  String nombre;

  Asteroide(this.nombre){
    imprimir2('Soy $nombre');
  }
}





void main(List<String> args) {
  
  final asteroidfe = Asteroide('Ceres');

}