main (){

 var a = 10;
 final b = 20;
 const c = 30;

 a = 20;
//  b = 30;  // error
//  c = 40;  // error

 print('======================');
 print('$a $b $c');
 print('======================');

 final personasFinal = ['Juan', 'Pedro', 'Carlos'];
 const personasConst = ['Juan', 'Pedro', 'Carlos']; // Desde que se compila la aplicacion
                                                    // no se puede cambiar el valor de personasConst

 personasFinal.add('Maria');
 personasConst.add('Maria');

 print(personasFinal);
 print(personasConst);

 print('======================');

 late final double x;
x = 10;

 print(x);
}