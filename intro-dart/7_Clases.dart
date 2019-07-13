void main() {
  // new es opcional
  var wolverine = new Heroe('David', "Todos");
  // otras formas
  /*
   * final wolv = new Heroe();
   * Heroe wolf = new Heroe();
   * const woll = Heroe();
   * */
  print(wolverine);
  print(wolverine.nombre);
  // Una forma más fácil de imprimir
  print(wolverine.toString());
   // es lo mismo que:
  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;
  // Constructores
  // Heroe();
  Heroe(String nombre, String poder) {
    this.nombre = nombre;
    this.poder = poder;
  }
  
  String toString() {
    return "${this.nombre} tiene ${this.poder}";
  }
}

// función con parámetros que tiene  valor por defecto
// y evitar que tenga por defecto null
void funcion({String nombre = 'sin nombre', String poder}) {
  
}