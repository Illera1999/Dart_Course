class Rectangle {

  int base = 0;
  int altura = 0;
  int area = 0;  
  String tipo = '';

  factory Rectangle(int base, int altura){
    if(base == altura) return Rectangle.cuadrado(base);
    return Rectangle.rectangulo(base, altura);

  }

  Rectangle.cuadrado(int base){
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }


  Rectangle.rectangulo(int base , int altura){
    this.base = base;
    this.altura = base;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }
  

  @override
  String toString() {
    return 'El $tipo es de base $base y altura $altura y su área es $area';
  }
}





void main(List<String> args) {
  final figura = Rectangle(10, 10);
  print(figura);
}