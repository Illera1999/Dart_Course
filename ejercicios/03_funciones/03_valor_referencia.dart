String capitalizador(String texto){
  texto = texto.toUpperCase();
  return texto;
}

Map<String,String> capitalizarMapa(Map<String, String> mapa){

  //Romper la referencia
  mapa = {...mapa};

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';

  return mapa;

}



void main(List<String> args) {
  
  String nombre = 'jose';
  String nombre2 = capitalizador(nombre);


  print(nombre);
  print(nombre2);


  Map<String, String> personas = {
    'nombre': 'Tony Stark',
  };

  Map<String, String> personas2 = capitalizarMapa(personas);

  print(personas);
  print(personas2);

}