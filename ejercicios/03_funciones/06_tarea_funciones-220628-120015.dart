/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  Map<String, dynamic>? usuario = askToUser(
    num: 1,
    question1: '¿Cúal es su nombre?' , 
    question2: '¿Qué edad tienes?', 
    question3: '¿En qué país naciste?');

  write('Usuario 1 sin deducciones');
  write( usuario );

  usuario = deducciones(usuario, 1800).cast<String, dynamic>();

  write(usuario);


  Map<String, dynamic>? usuario2 = askToUser(
    num: 2,
    question1: '¿Cúal es su nombre?' , 
    question2: '¿Qué edad tienes?', 
    question3: '¿En qué país naciste?');

  write('Usuario 2 sin deducciones');
  write( usuario2 );

  usuario2 = deducciones(usuario2, 2000).cast<String, dynamic>();

  write(usuario2);
}

Map<String,dynamic> askToUser({
  required int num,
  required String question1, 
  required String question2, 
  required String question3
  }){

    write('=========== Usuario $num =============');
    final name = getAnswer(question1);
    final age = getAnswer(question2);
    final country = getAnswer(question3);

    return {
      'name': name,
      'age': age,
      'country': country
    };
}

String getAnswer(String quaestion){
  stdout.writeln(quaestion);
  return read();
}

void write(dynamic data) => stdout.writeln(data.toString());

String read() => stdin.readLineSync() ?? '';

Map deducciones(Map user, double salari){
  double deducciones = salari * 0.15;
  double salarioNeto = salari - deducciones;

  user['salario']     = salari;
  user['deducciones'] = deducciones;
  user['salarioNeto'] = salarioNeto;
  return user;
}



