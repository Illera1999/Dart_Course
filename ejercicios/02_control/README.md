# Interacción con la Terminal en Dart 🖥️

Este documento explica cómo realizar interacciones básicas con la terminal (o línea de comandos) usando Dart. Aquí aprenderás cómo escribir y leer datos en la consola, así como tomar decisiones con estructuras de control como `if` y `else`.

## Tabla de Contenidos 📖
1. [Obtener Datos desde la Terminal](#obtener-datos-desde-la-terminal-)
2. [Condicionales: if y else](#condicionales-if-y-else)

## Obtener Datos desde la Terminal 🖨️

En Dart, puedes interactuar con la terminal usando la biblioteca `dart:io`. Para escribir en la consola se utiliza `stdout.write()` y para leer datos ingresados por el usuario, se emplea `stdin.readLineSync()`. Es importante manejar correctamente los valores nulos que puedan devolverse al leer la entrada.

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

