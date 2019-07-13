void main() {
  final superman = new Heroe();
  superman.nombre = "Clark Kent";
  final luthor = new Villano();
  luthor.nombre = "Lex Luthor";
  
}

abstract class Personaje {
  String poder;
  String nombre;
}

class Heroe extends Personaje {
  // String poder, nombre;
  int valentia;
  
}

class Villano extends Personaje {
  // String nombre, poder;
  int maldad;
}
