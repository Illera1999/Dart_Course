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
