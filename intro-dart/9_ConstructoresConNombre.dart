import 'dart:convert';

void main() {
  // JSON
  final rawJson = '{"nombre": "Logan", "poder": "Regex"}';
  Map parsedJson = json.decode(rawJson);
  print(parsedJson);
  final wolv = new Heroe.fromJson(parsedJson);
  //final wolv = new Heroe("David", "Regex");
  print(wolv.poder);
}

class Heroe {
  String nombre;
  String poder;
  Heroe(this.nombre, this.poder);
  // Constructores con nombre
  Heroe.fromJson(Map parsedJson) {
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }
}
