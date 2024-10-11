# Sexta lección

## Tabla de Contenidos 📖

1. [Extends](#extends)
2. [Abstracta](#abstracta)
3. [Super Constructor](#super-constructor)
4. [Override](#override)
5. [Mixins](#mixins)


---


## Extends
En Dart, se puede extender una clase existente utilizando la palabra clave `extends`. Esto permite crear clases nuevas que heredan propiedades y métodos de la clase original.

### Ejemplo de Extends
```dart
class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Encendido');
  }
  void apagar() {
    encendido = false;
    print('Apagado');
  }
}
```

En este ejemplo:
- Se crea una clase `Vehiculo` que tiene dos métodos `encender` y `apagar`.
- Se crea una clase `Coche` que hereda de `Vehiculo` y tiene un nuevo método `kilometraje`.
- Se crea una instancia de la clase `Coche` y se invocan los métodos `encender` y `apagar`.

---

## Abstracta
En Dart, se puede crear clases abstractas utilizando la palabra clave `abstract`. Esto permite crear clases que no pueden ser instanciadas directamente, sino que deben ser extender por otras clases.

### Ejemplo de Abstracta
```dart
abstract class Vehiculo {
  bool encendido = false;
  void encender() {
    encendido = true;
    print('Encendido');
  }
  void apagar() {
    encendido = false;
    print('Apagado');
  }

  bool revisarMotor();
}
```

En este ejemplo:
- Se crea una clase `Vehiculo` que tiene dos métodos `encender` y `apagar`.
- Se crea una clase `Coche` que hereda de `Vehiculo` y tiene un nuevo método `kilometraje`.
- Se crea una instancia de la clase `Coche` y se invocan los métodos `encender` y `apagar`.
- Se crea una clase `Motor` que hereda de `Vehiculo` y tiene un método `revisarMotor`.

---

## Super Constructor

La palabra clave `super` se utiliza para llamar a un constructor de una superclase. Esto permite inicializar propiedades y métodos de la superclase en la subclase.

### Ejemplo de Super Constructor
```dart
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  String imprimirNombre() {
    return '''
    Nombre: $nombre
    Edad: $edad''';
  }
}
  
class Cliente extends Persona {
  List ordenes = [];
  Cliente(int edadActual, String nombreActual): 
  super(nombreActual, edadActual);
}
```

En este ejemplo:
- Se crea una clase `Persona` que tiene dos propiedades `nombre` y `edad`.
- Se crea una clase `Cliente` que hereda de `Persona` y tiene una lista de ordenes.
- Se crea una instancia de la clase `Cliente` y se invocan los métodos `nombre` y `edad`.

---

## Override

En Dart, se puede sobrescribir métodos existentes en una subclase utilizando la palabra clave `override`. Esto permite sobrescribir métodos existentes en una subclase y agregar nuevos métodos.

### Ejemplo de Override
```dart
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  String imprimirNombre() {
    return '''
    Nombre: $nombre
    Edad: $edad''';
  }
}
  
class Cliente extends Persona {
  List ordenes = [];
  Cliente(int edadActual, String nombreActual): 
  super(nombreActual, edadActual);

  @override
  String imprimirNombre() {
    return '''
    SOY CLIENTE: SI
    Nombre: $nombre
    Edad: $edad''';
  }
}
```

En este ejemplo:
- Se sobrescribe el método `imprimirNombre` en la subclase `Cliente` para que imprima "SOY CLIENTE: SI" en lugar de "Nombre: y Edad:".

---

## Mixins

Los mixins son una forma de extender una clase con métodos y propiedades. Se utilizan para agregar funcionalidad a una clase sin modificar su código. Los mixins se definen utilizando la palabra clave `mixin` y se aplican a la clase que los utiliza.

### Ejemplo de mixins

```dart
mixin Logger {

  void imprimir(String texto){
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }

}

class Astro with Logger{

  Astro(){
    imprimir('Astro inicializado');
  }

  void comer(){
    imprimir('Comiendo...');
  }

}
```

En este ejemplo:
- Se define un mixin `Logger` que contiene un método `imprimir`.  
- Se aplica el mixin `Logger` a la clase `Astro` para agregar el método `imprimir` a la clase.
- Se crea una instancia de la clase `Astro` y se llama al método `comer`.

---