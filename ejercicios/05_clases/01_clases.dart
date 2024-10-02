import 'clases/persona.dart';

void main(List<String> args) {
  final persona = {
    'nombre': 'Juan',
    'apellido': 'Perez',
    'edad': 25,
    'sexo': 'Masculino'
  };

  final personaClass = Persona('Juan', 'Perez', 25, 'Masculino');
  final personaClass30 = Persona.persona30('Juan', 'Perez', 'Masculino');
  
  print(persona);
  print(personaClass);
  
  // Get y Set
  print(personaClass.info);

  print(personaClass.sexo);

  personaClass.sexo = 'Femenino';

  print(personaClass.sexo);

  // Constructores
  print(personaClass);
  print(personaClass30);
}