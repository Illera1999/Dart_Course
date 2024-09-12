# Interacción con la Terminal en Dart 🖥️

Este documento explica cómo realizar interacciones básicas con la terminal utilizando Dart. En este apartado, veremos cómo imprimir mensajes y leer datos del usuario desde la línea de comandos.

## Tabla de Contenidos 📖
1. [Interacción con la Terminal](#interacción-con-la-terminal-)

## Interacción con la Terminal

En Dart, puedes utilizar la biblioteca `dart:io` para interactuar con la terminal o línea de comandos. Dos funciones clave son:

- **stdout.write()**: Para imprimir mensajes en la terminal sin añadir un salto de línea automáticamente.
- **stdin.readLineSync()**: Para leer la entrada del usuario desde la terminal. Esta función devuelve un `String?`, por lo que es importante manejar los valores nulos correctamente.

---

Este apartado te permite manejar entradas y salidas en programas de consola. Para más detalles, revisa la documentación oficial de [dart:io](https://api.dart.dev/stable/dart-io/dart-io-library.html).
