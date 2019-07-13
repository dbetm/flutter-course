void main() {
  // Función con retorno de tipo dinámico
  saludar();
  print(saludar2());
  imprimir("hola", null);
  // llamado con nombre a las variables
  String mensaje = despedida(texto: 'Adiós', nombre: 'David');
  print(mensaje);
}

saludar() {
  print("Hola!");
}

String saludar2() {
  return "hello";
}

// El segundo parámetro es dinámico
void imprimir(String texto, otraCosa) {
  print(texto);
}

String despedida({String texto, String nombre}) {
  return '$texto $nombre';
}

// Función de flecha
String crossssssss({String texto, String nombre}) => "$texto $nombre";