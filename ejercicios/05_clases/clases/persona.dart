class Persona {
  String nombre;
  String apellido;
  int edad = 0;
  String _sexo = 'Soy propiedad privada'; // Propiedad privada

  Persona(this.nombre, this.apellido, this.edad, this._sexo){
    print('Hola, soy un constructor');
  }

  @override
  String toString() {
    return '''
    Nombre: $nombre
    Apellido: $apellido
    Edad: $edad
    Sexo: $_sexo''';
  }
  
  // Get y Set
  get info {
    return 'Hola, soy una propiedad getter';
  

  }

  String get sexo => _sexo;

  set sexo(String value) {
    _sexo = value;
  }

  Persona.persona30(this.nombre, this.apellido, this._sexo){
    this.edad = 30;
    print('Hola, soy un constructor con nombre y apellido');
  }
}