# Ejercicios Básicos de Dart 💻

Este directorio contiene los primeros ejercicios que he realizado para aprender los fundamentos de Dart. A continuación, encontrarás detalles sobre los temas que cubren cada uno de los archivos y cómo ejecutarlos en tu máquina.

## Índice
1. [Hola Mundo 💥](#1-hola-mundo-)
2. [Tipos de Datos en Dart 🔢](#2-tipos-de-datos-en-dart-)
3. [Constantes y Finales en Dart 🛠](#3-constantes-y-finales-en-dart-)
4. [Operadores Matemáticos en Dart ➕➖✖️➗](#4-operadores-matematicos-en-dart-)
5. [Operadores de Asignación en Dart 📥](#5-operadores-de-asignación-en-dart-)
6. [Operadores Condicionales en Dart ❓](#6-operadores-condicionales-en-dart-)
7. [Operadores Relacionales en Dart 🔗](#7-operadores-relacionales-en-dart-)
8. [Comentarios en Dart 📝](#8-comentarios-en-dart-)
9. [Cómo ejecutar los archivos Dart ⚙️](#cómo-ejecutar-los-archivos-dart-️)

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

### 4. **Operadores Matemáticos en Dart** ➕➖✖️➗

Dart soporta una variedad de operadores matemáticos que te permiten realizar operaciones aritméticas y de asignación. Aquí están los operadores matemáticos más comunes:

#### Operadores Aritméticos
- **Suma (`+`)**: Realiza la adición de dos valores.
- **Resta (`-`)**: Resta un valor de otro.
- **Multiplicación (`*`)**: Multiplica dos valores.
- **División (`/`)**: Realiza una división y devuelve un número de tipo `double`.
- **División Entera (`~/`)**: Realiza una división pero solo devuelve la parte entera del resultado.
- **Módulo (`%`)**: Devuelve el resto de la división entre dos números.

#### Operadores de Incremento/Decremento
- **Incremento (`++`)**: Aumenta el valor de una variable en 1.
- **Decremento (`--`)**: Disminuye el valor de una variable en 1.

---

### 5. **Operadores de Asignación en Dart** 📥

Los operadores de asignación permiten asignar valores a las variables de manera más eficiente. Estos son algunos de los operadores de asignación más comunes en Dart:

- **Asignación Simple (`=`)**: Asigna un valor a una variable.
- **Suma Asignación (`+=`)**: Suma un valor a la variable y luego asigna el resultado.
- **Resta Asignación (`-=`)**: Resta un valor de la variable y luego asigna el resultado.
- **Multiplicación Asignación (`*=`)**: Multiplica el valor de una variable por otro valor y asigna el resultado.
- **División Asignación (`/=`)**: Divide el valor de una variable entre otro valor y asigna el resultado.
- **División Entera Asignación (`~/=`)**: Realiza una división entera y asigna el valor resultante.
- **Módulo Asignación (`%=`)**: Calcula el resto de una división y asigna el valor resultante.

---

### 6. **Operadores Condicionales en Dart** ❓

Dart proporciona operadores condicionales que permiten evaluar expresiones basadas en condiciones. Estos son algunos de los más comunes:

- **Operador Ternario (`condición ? expr1 : expr2`)**: Evalúa una condición. Si es verdadera, ejecuta `expr1`, de lo contrario, ejecuta `expr2`.
- **Operador de asignación condicional (`??`)**: Devuelve el valor de la izquierda si no es `null`; de lo contrario, devuelve el valor de la derecha.
- **Operador de cascada (`..`)**: Permite realizar múltiples operaciones en el mismo objeto en secuencia.
- **Operador de condición lógica (`&&`, `||`, `!`)**: Permite combinar condiciones lógicas (AND, OR, NOT).

---

### 7. **Operadores Relacionales en Dart** 🔗

Los operadores relacionales se utilizan para comparar dos valores y devuelven un resultado booleano (`true` o `false`). Son fundamentales para realizar evaluaciones en condicionales y bucles.

#### Lista de Operadores Relacionales:
- **Mayor que (`>`)**: Devuelve `true` si el valor de la izquierda es mayor que el valor de la derecha.
- **Menor que (`<`)**: Devuelve `true` si el valor de la izquierda es menor que el valor de la derecha.
- **Mayor o igual que (`>=`)**: Devuelve `true` si el valor de la izquierda es mayor o igual que el valor de la derecha.
- **Menor o igual que (`<=`)**: Devuelve `true` si el valor de la izquierda es menor o igual que el valor de la derecha.
- **Igualdad (`==`)**: Devuelve `true` si ambos valores son iguales.
- **Desigualdad (`!=`)**: Devuelve `true` si ambos valores son diferentes.

Estos operadores son comúnmente utilizados en estructuras de control como `if`, `for` y `while`.

---

### 8. **Comentarios en Dart** 📝

Dart permite agregar comentarios en el código para describir su funcionalidad o hacer anotaciones, y hay varias maneras de hacerlo:

#### Comentarios de una sola línea
Se utilizan para agregar comentarios breves en una sola línea. Se indica con `//`.

#### Comentarios de múltiples líneas
Cuando es necesario comentar varias líneas de código o escribir una descripción más extensa, se pueden usar `/* */` para envolver el bloque de comentarios.

#### Comentarios de documentación
Para documentar funciones, clases o métodos, Dart permite utilizar comentarios especiales de documentación con `///`. Estos comentarios pueden ser procesados por herramientas como DartDoc para generar documentación automáticamente.

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