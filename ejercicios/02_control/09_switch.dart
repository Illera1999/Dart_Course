import 'dart:math';

void main(List<String> args) {
  

  final int rnd = Random().nextInt(7);

  switch(rnd){
    case 0:
      print('Hoy es Lunes');
      break;
    case 1:
      print('Hoy es Martes');
      break;
    case 2:
      print('Hoy es Miércoles');
      break;
    case 3:
      print('Hoy es Jueves');
      break;
    case 4:
      print('Hoy es Viernes');
      break;
    case 5:
      print('Hoy es Sábado');
      break;
    case 6:
      print('Hoy es Domingo');
      break;
    default:
      print('Hoy es otro día');
  }
}