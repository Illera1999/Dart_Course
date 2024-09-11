# Ejercicios Básicos de Dart 💻

Este directorio contiene los primeros ejercicios que he realizado para aprender los fundamentos de Dart. A continuación, encontrarás detalles sobre los temas que cubren cada uno de los archivos y cómo ejecutarlos en tu máquina.

## Índice
1. [Hola Mundo 💥](#1-hola-mundo-)
2. [Tipos de Datos en Dart 🔢](#2-tipos-de-datos-en-dart-)
3. [Constantes y Finales en Dart 🛠](#3-constantes-y-finales-en-dart-)
4. [Cómo ejecutar los archivos Dart ⚙️](#cómo-ejecutar-los-archivos-dart-️)

## Ejercicios Actuales:

### 1. **Hola Mundo** 💥

El clásico programa que imprime "Hola Mundo" en la terminal. Este ejercicio sirve como introducción básica a la sintaxis de Dart y cómo interactuar con la terminal para mostrar información.

- **Ubicación**: [`01_holamundo.dart`](./01_holamundo.dart)
- **Temas cubiertos**:
  - Introducción a Dart
  - Uso de `print()` para mostrar información en la terminal
  - Sintaxis básica del lenguaje

### 2. **Tipos de Datos en Dart** 🔢

Este ejercicio cubre los diferentes tipos de datos disponibles en Dart, tales como `int`, `double`, `var`, `String`, y `bool`. También se exploran operaciones básicas con estos tipos de datos.

- **Ubicación**: [`02_datatypes.dart`](./02_datatypes.dart)
- **Temas cubiertos**:
  - Tipos de datos primitivos en Dart (`int`, `double`, `String`, `bool`)
  - Uso de `var` para declaración de variables
  - **Inicialización tardía con `late`**: 
    - La palabra clave `late` se utiliza cuando deseas declarar una variable que se inicializará más tarde, pero estás seguro de que su valor será asignado antes de ser utilizado. Esto es útil para evitar errores de inicialización temprana en casos donde la variable no puede tener un valor inicial inmediatamente.
  - Manejo de valores nulos con `int?`
  - Operadores lógicos: `&&`, `||`, `!`

---

### 3. **Constantes y Finales en Dart** 🛠

Este apartado explica la diferencia entre `const` y `final`, dos palabras clave que se utilizan para declarar valores inmutables en Dart. Aquí te presentamos cómo funcionan y cuándo usarlas.

#### `final`
La palabra clave `final` indica que una variable solo puede ser asignada una vez, pero el valor se puede asignar en tiempo de ejecución. Esto permite asignar valores dinámicos, pero una vez asignado, no puede cambiar.

#### `const`
Por otro lado, `const` se utiliza para valores que son constantes en tiempo de compilación. Su valor debe ser conocido y fijo antes de que el programa se ejecute.

#### Diferencias Clave:
- **`final`**: Se usa cuando el valor se asigna en tiempo de ejecución y no se puede modificar después.
- **`const`**: Se usa cuando el valor es conocido en tiempo de compilación y permanece constante.

Más detalles se pueden encontrar en el archivo [`03_constantes_finales.dart`](./03_constantes_finales.dart).

---

## Cómo ejecutar los archivos Dart ⚙️

Para ejecutar el archivo `01_holamundo.dart` o cualquier otro archivo Dart en tu máquina, sigue estos sencillos pasos:

### Paso 1: Navegar a la carpeta del proyecto

Asumimos que ya tienes Dart instalado en tu máquina. Si aún no lo has hecho, puedes seguir [esta guía oficial](https://dart.dev/get-dart) para instalar Dart.

1. Abre una terminal (cmd, PowerShell o la terminal integrada de VS Code).
2. Navega hasta la carpeta donde tienes tu proyecto. En este caso, navega a la carpeta `ejercicios/01_basico`:

   ```bash
   cd ruta\de\tu\proyecto\DART_COURSE\ejercicios\01_basico

### Paso 2: Ejecutar el archivo Dart

Para ejecutar un archivo Dart, simplemente utiliza el siguiente comando:


    ```bash
    dart nombre_del_archivo.dart

Por ejemplo, para ejecutar 01_holamundo.dart, deberías escribir:

    ```bash
    dart 01_holamundo.dart

¡Y eso es todo! 🎉 Ahora podrás ver los resultados directamente en la terminal.