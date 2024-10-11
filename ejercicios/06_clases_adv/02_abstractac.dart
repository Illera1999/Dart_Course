

abstract class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Encendido');
  }
  void apagar() {
    encendido = false;
    print('Apagado');
  }

  bool revisarMotor();
}


class Coche extends Vehiculo {
  int kilometraje = 0;

  @override
  bool revisarMotor() {
    print('Revisando motor');
    return true;
  }
}



void main(List<String> args) {

  final ford = Coche();

  ford.encender();
  ford.apagar();

  ford.revisarMotor();
}