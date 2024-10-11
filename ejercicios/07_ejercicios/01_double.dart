
void main(List<String> args) {
  double numero = 3.1416;

  double infinito = double.infinity;

  print('Firma: ${numero.sign} :::: Double: ${numero}');
  

  print('isFinite: ${numero.isFinite} :::: Double: ${numero}');
  print('isFinite: ${infinito.isFinite} :::: Double: ${infinito}');

  print('ABS: ${numero.abs()} :::: Double: ${numero}');
  print('CEIL: ${numero.ceil()} :::: Double: ${numero}');
  print('ceilToDouble: ${numero.ceilToDouble()} :::: Double: ${numero}');

  print('Round: ${numero.round()} :::: Double: ${numero}');
  print('Round: ${numero.roundToDouble()} :::: Double: ${numero}');

}