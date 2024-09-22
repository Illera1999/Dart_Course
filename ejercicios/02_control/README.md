# Interacción con la Terminal en Dart 🖥️

Este documento explica cómo realizar interacciones básicas con la terminal (o línea de comandos) usando Dart. Aquí aprenderás cómo escribir y leer datos en la consola, así como tomar decisiones con estructuras de control como `if` y `else`.

## Tabla de Contenidos 📖
1. [Obtener Datos desde la Terminal](#obtener-datos-desde-la-terminal-)
2. [Condicionales: if y else](#condicionales-if-y-else)
3. [Ciclo for](#ciclo-for-)
4. [Ciclo for-in](#ciclo-for-in-)
5. [Ciclo while](#ciclo-while-)
6. [Diferencia entre while y do-while](#diferencia-entre-while-y-do-while)
7. [Diferencia entre continue y break](#diferencia-entre-continue-y-break)
8. [Uso de etiquetas en un ciclo for](#uso-de-etiquetas-en-un-ciclo-for-)
9. [Uso del switch](#uso-del-switch-)


## Obtener Datos desde l Terminal 🖨️

En Dart, puedes interactuar con la terminal usando la biblioteca `dart:io`. Paraescribir en la consola se utiliza `stdout.write()` y para leer datos ingresados por el usuario, se emplea `stdin.readLineSync()`. Es importante manejar correctamente los valores nulos que puedan devolverse al leer la entrada.

## Condicionales: if y else 🔀

Los condicionales en Dart permiten ejecutar diferentes bloques de código basados en condiciones. El uso de `if` y `else` es fundamental para tomar decisiones en la ejecución del programa. `if` evalúa una condición, y si es verdadera, ejecuta el código asociado; de lo contrario, puede ejecutar el bloque `else`.

## Ciclo `for` 🔁

El ciclo `for` en Dart se usa para repetir un bloque de código. Tiene tres partes: inicialización, condición y actualización.

### Ejemplo básico

Este ciclo imprime los números del 1 al 5:

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    print('Número: $i');
  }
}
```

### Recorrer una lista

Usa un ciclo `for` para recorrer elementos de una lista:

```dart
void main() {
  List<String> frutas = ['Manzana', 'Banana', 'Cereza'];

  for (int i = 0; i < frutas.length; i++) {
    print('Fruta: ${frutas[i]}');
  }
}
```

### Contar hacia atrás

Ejemplo de un ciclo `for` que cuenta en orden descendente:

```dart	
void main() {
  for (int i = 5; i > 0; i--) {
    print('Cuenta regresiva: $i');
  }
}
```

## Ciclo `for-in` 🔁

El ciclo `for-in` se utiliza para recorrer los elementos de una lista, colección o cualquier objeto iterable de forma más simple.

### Ejemplo de `for-in` con una lista

Este ciclo recorre una lista de frutas y las imprime una por una:

```dart	
void main() {
  List<String> frutas = ['Manzana', 'Banana', 'Cereza'];

  for (var fruta in frutas) {
    print('Fruta: $fruta');
  }
}
```	


## Ciclo `while` 🔄

El ciclo `while` ejecuta un bloque de código mientras una condición sea verdadera. Es útil cuando no se sabe cuántas veces debe repetirse el ciclo, y depende de una condición que puede cambiar en tiempo de ejecución.

### Ejemplo básico

Este ciclo imprime los números del 1 al 5 usando `while`:

```dart	
void main() {
  int i = 1;

  while (i <= 5) {
    print('Número: $i');
    i++;
  }
}
```	

### Ciclo `while` con entrada del usuario

En este ejemplo, el ciclo continúa pidiendo al usuario que ingrese un número hasta que el número ingresado sea 0:

```dart	
import 'dart:io';

void main() {
  int number;

  do {
    stdout.write('Ingrese un número (0 para salir): ');
    number = int.parse(stdin.readLineSync()!);
  } while (number != 0);

  print('Has salido del ciclo.');
}
```	


## Diferencia entre `while` y `do-while`

La principal diferencia entre `while` y `do-while` es el orden en que se evalúa la condición:

- En un **ciclo `while`**, la condición se evalúa **antes** de que se ejecute el bloque de código. Si la condición es falsa desde el principio, el bloque no se ejecutará ni una vez.
- En un **ciclo `do-while`**, el bloque de código se ejecuta **al menos una vez**, ya que la condición se evalúa **después** de que se ejecute el bloque.

### Ejemplo de `do-while`

Este ciclo pedirá al usuario ingresar un número al menos una vez, sin importar si el número es 0:

```dart	
import 'dart:io';

void main() {
  int number;

  do {
    stdout.write('Ingrese un número (0 para salir): ');
    number = int.parse(stdin.readLineSync()!);
  } while (number != 0);

  print('Has salido del ciclo.');
}
```

### Diferencia entre `continue` y `break`

- **`continue`**: Detiene la iteración actual y pasa a la siguiente, sin salir del ciclo por completo.
- **`break`**: Sale completamente del ciclo, deteniendo todas las iteraciones restantes.

Ambas instrucciones son útiles para controlar el flujo de un ciclo, dependiendo de si deseas saltar una iteración o salir del ciclo por completo.

## Uso de etiquetas en un ciclo `for` 🏷️🔁

Las **etiquetas** en Dart te permiten controlar ciclos anidados con `break` o `continue`. Una etiqueta se coloca antes de un ciclo y te permite salir o continuar en un ciclo específico.

### Ejemplo con `break`

Este ejemplo utiliza una etiqueta para romper el ciclo externo:

```dart	
void main() {
  outer: for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        break outer;  // Sale del ciclo externo
      }
      print('i: $i, j: $j');
    }
  }
  print('Ciclo terminado.');
}
```	

### Ejemplo con `continue`

Este ejemplo salta a la siguiente iteración del ciclo externo:

```dart	
void main() {
  outer: for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue outer;  // Salta a la siguiente iteración del ciclo externo
      }
      print('i: $i, j: $j');
    }
  }
}
```	

Las etiquetas te permiten salir o continuar un ciclo específico cuando tienes ciclos anidados.

## Uso del `switch` 🔄

El `switch` en Dart se utiliza para ejecutar diferentes bloques de código según el valor de una variable. Es útil cuando tienes múltiples posibles valores y quieres evitar múltiples condicionales `if-else`.

### Sintaxis básica del `switch`

El `switch` evalúa una expresión y ejecuta el bloque de código que coincide con su valor.

```dart	
void main() {
  int numero = 2;

  switch (numero) {
    case 1:
      print('El número es 1');
      break;
    case 2:
      print('El número es 2');
      break;
    case 3:
      print('El número es 3');
      break;
    default:
      print('Número desconocido');
  }
}
```	

### Explicación:
- **`switch`**: Evalúa la variable `numero`.
- **`case`**: Cada caso compara el valor de `numero` con un valor específico.
- **`break`**: Finaliza la ejecución de ese bloque de código.
- **`default`**: Se ejecuta si ningún caso coincide con el valor.

### Ejemplo con `String`

También puedes usar `switch` con cadenas:

```dart	
void main() {
  String dia = 'Lunes';

  switch (dia) {
    case 'Lunes':
      print('Inicio de semana');
      break;
    case 'Viernes':
      print('Fin de semana cercano');
      break;
    default:
      print('Día normal');
  }
}
```	

El `switch` es una forma clara y eficiente de manejar múltiples valores posibles en una variable.
