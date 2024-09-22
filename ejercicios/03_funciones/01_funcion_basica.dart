void main(List<String> args) {
  
  // Tipo dynamico
  saludar();
  var result = adios();

  // La función no devuelve nada
  print('Result: $result');


  // No podemos recoger el resultado de un void por que es una función vscía
  despedimos();

  int resultado = sumar(2, 3);
  print('Resultado: $resultado');
}


saludar(){
  print('Hola Jose');
  print('Hola Patri');
  return 0;
}

adios(){

  print('Adiós');
}

void despedimos(){
  print('Despedimos con un void');
}

int sumar(int a, int b){
  return a + b;
}

