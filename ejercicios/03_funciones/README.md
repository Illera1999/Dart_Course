# Tercera lección

En esta lección nos enfocaremos en entender cómo funcionan las funciones en Dart. Las funciones son bloques de código que se pueden reutilizar, lo que ayuda a estructurar y mantener un código más limpio y modular. Exploraremos cómo definir una función, los parámetros que puede recibir, y cómo retornar valores.

## Tabla de Contenidos 📖

1. [Introducción a las Funciones en Dart](#introducción-a-las-funciones-en-dart)



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
