# Tercera lección

En esta lección nos enfocaremos en entender cómo funcionan las funciones en Dart. Las funciones son bloques de código que se pueden reutilizar, lo que ayuda a estructurar y mantener un código más limpio y modular. Exploraremos cómo definir una función, los parámetros que puede recibir, y cómo retornar valores.

## Tabla de Contenidos 📖

## Tabla de Contenidos 📖

1. [Introducción a las Funciones en Dart](#introducción-a-las-funciones-en-dart)
2. [Funciones con argumentos de posición](#funciones-con-argumentos-de-posicion)
3. [Funciones con argumentos nombrados](#funciones-con-argumentos-nombrados)
4. [Referencias en Dart](#referencias-en-dart)
5. [Funciones Lambda en Dart](#funciones-lambda-en-dart)
   - [Sintaxis de una línea (Arrow Function)](#1-sintaxis-de-una-línea-arrow-function)
   - [Sintaxis con múltiples líneas](#2-sintaxis-con-múltiples-líneas)
   - [Uso Común](#uso-común)
   - [Características Clave](#características-clave)
6. [Callbacks en Dart](#callbacks-en-dart)
   - [Ejemplo Simple de Callback](#ejemplo-simple-de-callback)
   - [Callbacks con Funciones Lambda](#callbacks-con-funciones-lambda)
   - [Uso Común](#uso-común-1)
   - [Beneficios de los Callbacks](#beneficios-de-los-callbacks)
---

## Introducción a las Funciones en Dart

Una función en Dart es un bloque de código que se puede ejecutar cuando es llamado. Las funciones pueden recibir argumentos y devolver un valor. Aquí tienes un ejemplo básico de una función en Dart:

```dart	
void miFuncion() {
  print('¡Hola, mundo!');
}
```

Puedes llamar a esta función utilizando su nombre:

```dart	
miFuncion(); // Imprime: ¡Hola, mundo!
```

Las funciones pueden devolver valores utilizando la palabra clave `return` y también pueden tomar parámetros para realizar tareas específicas.

```dart	
int sumar(int a, int b) {
  return a + b;
}

int resultado = sumar(3, 4); // resultado = 7
```

## Funciones con argumentos de posición
En Dart, los argumentos de posición son aquellos que se pasan a una función en un orden específico. Estos pueden ser obligatorios o opcionales. Los argumentos opcionales se definen entre [corchetes] y pueden tener valores predeterminados.

```dart	
void saludar(String nombre, int edad) {
  print('Hola $nombre, tienes $edad años.');
}

saludar('Carlos', 30); // Llamada a la función
```

```dart	
void saludar([String nombre = 'Anónimo', int edad = 0]) {
  print('Hola $nombre, tienes $edad años.');
}

saludar(); // Llamada sin argumentos
saludar('Lucía'); // Llamada con un solo argumento
saludar('Lucía', 25); // Llamada con ambos argumentos
```

En el caso de argumentos opcionales, si no se proporciona un valor, Dart utiliza el valor por defecto.

## Funciones con argumentos nombrados
En Dart, los argumentos por nombre permiten pasar parámetros a una función especificando el nombre del argumento. Esto hace que el orden en que se pasan los argumentos sea irrelevante. Estos se definen entre {llaves}.

Se pueden hacer opcionales y darles valores predeterminados, o marcarlos como requeridos usando la palabra clave 'required'.

```dart	
void saludar({String nombre = 'Anónimo', int edad = 0}) {
  print('Hola $nombre, tienes $edad años.');
}

saludar(); // Llamada sin argumentos
saludar(nombre: 'Carlos'); // Llamada pasando solo un argumento
saludar(edad: 25, nombre: 'Lucía'); // Llamada con ambos argumentos, en cualquier orden
```

```dart	
void saludar({required String nombre, required int edad}) {
  print('Hola $nombre, tienes $edad años.');
}

saludar(nombre: 'Carlos', edad: 30); // Ambos argumentos deben ser proporcionados
```

## Referencias en dart
Los objetos (como mapas) se pasan por referencia, lo que significa que si modificas una copia, el original también cambia. Para evitar esto, puedes hacer una **copia superficial** del objeto (como en el caso de `{...mapa}`).

## Funciones Lambda en Dart

Las **lambdas** son funciones anónimas, útiles para escribir funciones de forma concisa. Existen dos sintaxis principales:


### 1. **Sintaxis de una línea (Arrow Function)**

Usa `=>` para funciones de una sola expresión:

```dart
var sumar = (int a, int b) => a + b;

void main() {
  print(sumar(3, 4)); // Imprime: 7
}
```	

### 2. **Sintaxis con múltiples líneas**

Si la función tiene varias líneas, se usa `{}`:

```dart	
var restar = (int a, int b) {
  return a - b;
};
```

### Uso Común

Las lambdas se usan frecuentemente como argumentos de funciones:

```dart
numeros.forEach((numero) => print(numero * 2));
```

### Características Clave
- **Concisas**: Ideal para funciones pequeñas.
- **Anónimas**: No tienen nombre.
- **Flexibles**: Pueden ser de una o varias líneas.

Las lambdas hacen el código más simple y legible cuando se usan para funciones rápidas.

## Callbacks en Dart

Un **callback** es una función que se pasa como argumento a otra función y se invoca en el momento adecuado dentro de la función principal.


### Ejemplo Simple de Callback

```dart	
void procesar(int a, int b, Function callback) {
  int resultado = a + b;
  callback(resultado);
}

void imprimirResultado(int resultado) {
  print('El resultado es: $resultado');
}

void main() {
  procesar(2, 3, imprimirResultado); // Llama a la función con un callback
}
```	

### Callbacks con Funciones Lambda

Puedes usar lambdas como callbacks para simplificar:

```dart
procesar(2, 3, (resultado) => print('Resultado: $resultado'));
```

### Uso Común

Los callbacks son útiles en operaciones asincrónicas o eventos como `Future` y `Streams`.

### Beneficios de los Callbacks

- **Reutilizables**: Ejecutan código personalizado en diferentes situaciones.
- **Flexibles**: Permiten un comportamiento dinámico.