# Cuarta lección: Tipos no comunes en Dart

En esta lección veremos las **colas (queues)** en Dart, una estructura de datos útil para seguir el principio **FIFO (First In, First Out)**. Esto significa que el primer elemento en entrar es el primero en salir.

## Tabla de Contenidos 📖

1. [Introducción a las Colas (Queue)](#introducción-a-las-colas-queue)
2. [El tipo Enum en Dart](#el-tipo-enum-en-dart)


---

## Introducción a las Colas (Queue)

Una **cola (queue)** es una estructura de datos que sigue el principio **FIFO**. En Dart, puedes usar la clase `Queue` del paquete `dart:collection`.

## Métodos comunes en un Queue

- `add(T value)`: Añade un elemento al final de la cola.
- `removeFirst()`: Elimina el primer elemento.
- `isEmpty`: Devuelve `true` si la cola está vacía.
- `clear()`: Vacía la cola.

## Ejemplo básico de Queue

```dart	
import 'dart:collection';

void main() {
  Queue<int> cola = Queue<int>();

  // Añadir elementos
  cola.add(1);
  cola.add(2);

  print(cola); // {1, 2}

  // Eliminar el primer elemento
  cola.removeFirst();
  print(cola); // {2}
}
```

Este ejemplo muestra cómo añadir y eliminar elementos de una cola en Dart.

---

## El tipo Enum en Dart

Un **enum** (enumeración) es un tipo especial en Dart que se utiliza para definir un conjunto de valores constantes. Es útil cuando necesitas limitar las opciones a valores predefinidos.

### Ejemplo de Enum:

```dart	
enum DiaSemana { lunes, martes, miercoles, jueves, viernes }

void main() {
  DiaSemana hoy = DiaSemana.lunes;

  if (hoy == DiaSemana.lunes) {
    print('Hoy es lunes.');
  }
}
```

Con los **enum**, puedes definir un conjunto fijo de valores que permiten mayor legibilidad y control en tu código.

---

Este contenido cubre tanto el uso de colas como de **enum** en Dart, proporcionando una estructura básica y ejemplos para ambos.



## El tipo Future en Dart

Un **Future** en Dart representa un valor o resultado que estará disponible en algún momento en el futuro. Se usa principalmente para manejar tareas **asincrónicas**, como operaciones de red o lectura de archivos, que pueden tardar en completarse.

Un `Future` tiene dos posibles estados:
- **Completado con éxito**: Donde devuelve el valor deseado.
- **Completado con error**: Donde se lanza una excepción.

Puedes manejar el resultado de un **Future** usando:
- `then()`: Para manejar el valor cuando el `Future` se completa.
- `catchError()`: Para manejar errores.
- `await`: Para esperar de manera asincrónica.

---

## Ejemplo de uso de Future

```dart	
Future<String> obtenerDatos() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Datos obtenidos';
}

void main() async {
  print('Esperando datos...');
  String datos = await obtenerDatos();
  print(datos); // Imprime: Datos obtenidos
}
```

En este ejemplo:
- Usamos `await` para esperar que el **Future** se complete y devolver los datos después de 2 segundos.

---

Con esto, ya sabes cómo manejar **Futures** en Dart, útiles para manejar operaciones que toman tiempo sin bloquear la ejecución del programa.



## Async y Await en Dart

En Dart, el uso de **async** y **await** permite escribir código asincrónico de manera más sencilla y legible:

- **`async`**: Marca una función como asincrónica, indicando que la función devolverá un `Future`.
- **`await`**: Espera a que un `Future` se complete antes de continuar con la ejecución. Solo se puede usar dentro de funciones marcadas como `async`.

---

## Manejo de errores con catchError

El método **`catchError`** se usa para capturar y manejar errores que ocurren durante la ejecución de un `Future`. Es útil para prevenir que la aplicación se detenga debido a errores no controlados.

### Ejemplo de uso de `catchError`:

```dart	
Future<String> obtenerDatos() {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'Error al obtener los datos'; // Simula un error
  }).catchError((error) {
    return 'Error capturado: $error';
  });
}

void main() async {
  print('Esperando datos...');
  String datos = await obtenerDatos();
  print(datos); // Imprime: Error capturado: Error al obtener los datos
}
```

En este ejemplo:
- Se lanza un error dentro del `Future`, pero se captura usando **`catchError`**, lo que permite manejar el error sin interrumpir el flujo del programa.

---

## Ejemplo de uso de Future con async, await y catchError

En este ejemplo, combinamos **async**, **await** y **catchError** para manejar tanto la asincronía como los errores:

```dart
Future<String> obtenerDatos() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    throw 'Error de red';
  } catch (error) {
    return 'Error capturado: $error';
  }
}

void main() async {
  print('Esperando datos...');
  String datos = await obtenerDatos();
  print(datos); // Imprime: Error capturado: Error de red
}
```

Este ejemplo utiliza un bloque **`try-catch`** dentro de una función **async** para capturar errores de manera efectiva.

---

Con esta explicación, ahora conoces cómo manejar **Futures** en Dart, cómo utilizar **async** y **await**, y cómo capturar errores utilizando **`catchError`** o **try-catch** en funciones asincrónicas.


## Streams en Dart

Un **Stream** en Dart es una secuencia de datos que se pueden emitir de forma asíncrona a lo largo del tiempo. Los **Streams** son útiles cuando se quiere escuchar un flujo continuo de datos, como eventos de usuario, datos de red o respuestas de sensores.

### Tipos de Streams:
- **Single-subscription streams**: Permiten solo un suscriptor a la vez.
- **Broadcast streams**: Permiten múltiples suscriptores que reciben los mismos datos simultáneamente.

Los **Streams** son una excelente herramienta para trabajar con datos que llegan de forma continua o en ráfagas, como los clicks de un botón o la recepción de datos en tiempo real.

### Cómo escuchar un Stream

Para escuchar un **Stream**, necesitas un **Listener** que esté atento a los eventos que el **Stream** emite. Puedes usar el método `listen()` para manejar los datos emitidos.

---

## Ejemplo básico de uso de Stream

Aquí te muestro un ejemplo de un **Stream** que emite una secuencia de enteros:

```dart
import 'dart:async';

void main() {
  Stream<int> streamDeEnteros = Stream.periodic(Duration(seconds: 1), (contador) => contador).take(5);

  streamDeEnteros.listen((dato) {
    print('Nuevo dato recibido: $dato');
  });
}
```

En este ejemplo:
- Usamos `Stream.periodic` para emitir un valor cada segundo.
- El método `take(5)` limita el número de valores emitidos a 5.
- Usamos `listen()` para suscribirnos al **Stream** y manejar los datos recibidos.

---

## Métodos Comunes en Streams

Al trabajar con **Streams**, algunos métodos comunes son:
- `listen()`: Escucha los datos emitidos por el **Stream**.
- `asBroadcastStream()`: Convierte un **Stream** en un **broadcast** que permite múltiples suscriptores.
- `where()`: Filtra los eventos basados en una condición.
- `map()`: Transforma los datos del **Stream**.

---

Con esto ya tienes una idea clara de cómo funcionan los **Streams** en Dart y cómo puedes utilizarlos para manejar flujos de datos continuos de manera asincrónica.