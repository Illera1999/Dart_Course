

class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Encendido');
  }
  void apagar() {
    encendido = false;
    print('Apagado');
  }
}


class Coche extends Vehiculo {
  int kilometraje = 0;
}



void main(List<String> args) {

  final ford = Coche();

  ford.encender();
  ford.apagar();
}