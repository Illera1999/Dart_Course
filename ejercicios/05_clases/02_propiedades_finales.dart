
class Cuadrado {
  final int lado;
  final int area;

  Cuadrado(this.lado):
    area = lado * lado;

  @override
  String toString() {
    return 'El cuadrado es de lado $lado y su área es $area';
  }
}

void main(List<String> args) {
  final cuadrado = Cuadrado(5);
  print(cuadrado);
}