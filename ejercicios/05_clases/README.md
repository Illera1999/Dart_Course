# Quinta lección: Clases en Dart

## Tabla de Contenidos 📖
1. [Definición Básica](#definición-básica)
2. [Constructores](#constructores)
3. [Herencia y Mixins](#herencia-y-mixins)
4. [Propiedades Privadas](#propiedades-privadas)
5. [Ejemplo Completo](#ejemplo-completo)
6. [Variables estáticas](#variables-estáticas)
7. [Singleton](#singleton)

---

## 1. Definición Básica

Una clase en Dart agrupa datos y funciones. Se define así:

```dart
class Persona {
  String nombre;
  int edad;
  Persona(this.nombre, this.edad);
}
```

---

## 2. Constructores

Los constructores inicializan los objetos. Un ejemplo básico:

```dart
class Persona {
  String nombre;
  int edad;
  Persona(this.nombre, this.edad);
}
```

---

## 3. Herencia y Mixins

Con `extends` heredamos de otras clases, y con `with` usamos mixins:

```dart
class Estudiante extends Persona {
  String escuela;
  Estudiante(String nombre, int edad, this.escuela) : super(nombre, edad);
}

mixin Cantante {
  void cantar() {
    print('Estoy cantando!');
  }
}

class Artista extends Persona with Cantante {}
```

---

## 4. Propiedades Privadas

En Dart, las propiedades privadas se definen utilizando un guion bajo (`_`) al inicio del nombre. Solo son accesibles dentro de la misma clase. Ejemplo:

```dart
class Persona {
  String _nombre; // Propiedad privada
  int _edad;

  Persona(this._nombre, this._edad);

  // Método público para acceder a la propiedad privada
  String get nombre => _nombre;

  void saludar() {
    print('Hola, soy $_nombre y tengo $_edad años.');
  }
}
```

---

## 5. Ejemplo Completo

```dart
void main() {
  var artista = Artista('Ana', 25);
  artista.cantar();
}
```


## Getters

Un getter es para acceder a una propiedad privada:

```dart
class Persona {
  String _nombre;

  Persona(this._nombre);

  // Getter para acceder al nombre
  String get nombre => _nombre;
}
```

## Setters

Un setter es para modificar una propiedad, con validaciones si es necesario:

```dart

class Persona {
  String _nombre;

  Persona(this._nombre);

  // Getter
  String get nombre => _nombre;

  // Setter para modificar el nombre
  set nombre(String nuevoNombre) {
    if (nuevoNombre.isNotEmpty) {
      _nombre = nuevoNombre;
    }
  }
}
```

## Variables Estáticas


Las variables estáticas en Dart son propiedades o métodos que pertenecen a una clase en lugar de a una instancia de la clase. Esto significa que puedes acceder a una variable estática sin crear una instancia de la clase. Son útiles para almacenar valores que son comunes a todas las instancias de una clase o para métodos que no dependen de las propiedades de la instancia.

Para declarar una variable estática en Dart, se usa la palabra clave `static`. Estas variables se inicializan una sola vez, cuando se carga la clase. Los métodos estáticos también se declaran de manera similar y no pueden acceder a propiedades o métodos de instancia directamente.  


### Ejemplo de variable estática

```dart  
class Banco {
  static double tasaInteres = 4.5;

  static void mostrarTasa() {
    print('La tasa de interés actual es $tasaInteres%');
  }
}
```

En este ejemplo:
- `tasaInteres` es una variable estática que pertenece a la clase `Banco`.
- El método `mostrarTasa` también es estático y puede ser llamado directamente usando `Banco.mostrarTasa()` sin instanciar la clase.

### Accediendo a variables estáticas

```dart  
void main() {
  // Acceder a la variable estática sin crear una instancia
  print(Banco.tasaInteres); // Salida: 4.5

  // Llamar a un método estático
  Banco.mostrarTasa(); // Salida: La tasa de interés actual es 4.5%
}
```


## Singleton

Un singleton es una clase que solo puede existir una vez en memoria. Es útil para almacenar valores que son comunes a todas las instancias de una clase o para métodos que no dependen de las propiedades de la instancia.

Para crear un singleton, se utiliza la palabra clave `factory` junto con la palabra clave `Singleton`. Esto crea una clase con un constructor privado y un constructor estático que devuelve una instancia de la clase. 

### Ejemplo de Singleton
```dart
class MiServicio {

  static final MiServicio _singleton = MiServicio._();

  factory MiServicio(){
    return _singleton;
  }

  MiServicio._();

}
```

En este ejemplo:
- La clase `MiServicio` es un singleton.
- El constructor privado `_` es el constructor estático que devuelve una instancia de la clase.
- El constructor estático `MiServicio()` es el constructor que se llama cuando se crea una nueva instancia de la clase.

### Accediendo a Singleton

```dart
void main(List<String> args) {
  
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com/v1';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print(spotifyService1 == spotifyService2); // Flaso

  print (spotifyService1.url); // https://api.spotify.com/v2
  print (spotifyService2.url); // https://api.spotify.com/v2

}
```