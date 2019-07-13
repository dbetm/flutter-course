// Forma más corta de definir las propiedades en clases

void main() {
  var wolverine = new Heroe(nombre: 'David', poder: "Todos");
  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;
  // Constructores
  // Heroe();
  //Heroe({String nombre = 'sin nombre', String poder}) {
    //this.nombre = nombre;
    //this.poder = poder;
  //}
  Heroe({this.nombre, this.poder});
  
  String toString() => "$nombre tiene $poder";
}