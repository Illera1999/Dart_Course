# Cuarta lección: Clases en Dart

## Tabla de Contenidos 📖
1. [Definición Básica](#definición-básica)
2. [Constructores](#constructores)
3. [Herencia y Mixins](#herencia-y-mixins)
4. [Propiedades Privadas](#propiedades-privadas)
5. [Ejemplo Completo](#ejemplo-completo)

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