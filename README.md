# Aprendiendo Dart 🚀

¡Bienvenido a mi repositorio de aprendizaje de Dart! Aquí documentaré mi progreso mientras exploro este poderoso lenguaje de programación. El objetivo de este repositorio es servir como un diario de aprendizaje y como un recurso para otros que también estén interesados en aprender Dart.

## ¿Qué es Dart? 🎯

[Dart](https://dart.dev/) es un lenguaje de programación optimizado para aplicaciones frontend, especialmente en la web y móviles. Es el lenguaje detrás de [Flutter](https://flutter.dev/), un framework de UI desarrollado por Google que permite crear aplicaciones multiplataforma con una única base de código.

## Estructura del Repositorio 📁

Este repositorio está organizado de la siguiente manera:

- **/notas**: Contiene notas detalladas sobre los temas que voy cubriendo, incluyendo teoría, ejemplos de código y referencias.
- **/ejercicios**: Ejercicios prácticos que realizo para reforzar el aprendizaje. Aquí puedes encontrar soluciones comentadas y explicaciones detalladas.
- **/recursos**: Links a recursos adicionales como artículos, videos, y documentación oficial que considero útiles para aprender Dart.

## Temas Cubiertos hasta Ahora 📚

- **El legendario "Hola Mundo"**: 💥 La piedra angular de toda carrera en programación. Sí, hemos hecho que Dart nos diga "Hola Mundo", y créeme, ¡fue épico! 🎉 No es solo una línea de texto, es el primer paso hacia la dominación del mundo (del código, claro). 😎

- **Tipos de Datos en Dart** 🔢

Dart ofrece una variedad de tipos de datos que permiten manejar información de forma eficiente:

- **int**: Representa números enteros. Por ejemplo, `int a = 1;`.
- **double**: Utilizado para números con decimales. Ejemplo: `double b = 1.0;`.
- **var**: Permite declarar variables sin especificar el tipo explícitamente, ya que Dart infiere el tipo. Ejemplo: `var c = 1;`.
- **int?**: Añade la posibilidad de que la variable sea nula, lo que es útil cuando una variable puede no tener un valor asignado. Ejemplo: `int? d;`.

Dart también soporta la inicialización tardía de variables con la palabra clave `late`, lo que permite asignarles valores más adelante en la ejecución.

- **Manejo de Strings en Dart** 📝

Las cadenas de texto (Strings) en Dart son secuencias de caracteres que pueden representarse usando comillas simples o dobles. Dart permite varias operaciones y formatos para trabajar con Strings:

- **Declaración básica**: Puedes usar comillas simples (`'`) o dobles (`"`). Ejemplo: `String nombre = 'Tony';` o `String apellido = "Stark";`.
- **Interpolación**: Dart permite la interpolación de variables dentro de Strings utilizando el símbolo `$`. Ejemplo: `String nombreCompleto = '$nombre $apellido';`.
- **Secuencias de escape**: Para caracteres especiales como comillas dentro de una cadena, se utiliza la barra invertida (`\`). Ejemplo: `String nombre3 = "O\'Connor";`.
- **Cadenas multilínea**: Puedes crear cadenas que abarcan varias líneas utilizando tres comillas simples (`'''`). Ejemplo:

  ```dart
  String multilineas = '''
    Hola Mundo!
    Esto es una prueba de cómo funciona el 
    salto de línea.
  ''';

- **Manejo de 'bool' en Dart** 🔢

En Dart, el tipo `bool` representa un valor booleano, que solo puede ser `true` o `false`. Es útil para controlar el flujo de ejecución en condicionales, bucles, y en cualquier situación donde necesites verificar una condición lógica.

- `&&` (AND lógico)
- `||` (OR lógico)
- `!` (NOT lógico)

## Ejemplo con operadores lógicos:

```dart
void main() {
  bool a = true;
  bool b = false;

  // AND lógico
  print(a && b); // Imprime: false

  // OR lógico
  print(a || b); // Imprime: true

  // NOT lógico
  print(!a);     // Imprime: false
}

