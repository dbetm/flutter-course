// Listas
void main() {
  // Colección de objetos
  // Lista dinámica, permite diferentes tipos de datos
  List numeros = [1,2,3,4,'a'];
  print(numeros);
  // Agregar
  numeros.add(56);
  
  // Lista de solo números
  List<int> numeros2 = [12, 34];
  print(numeros2);
  
  // Lista de tamaño fijo, ya no podemos usar add
  List otraLista = new List(10);
  otraLista[4] = "hey";
  print(otraLista);
  
  List<List<int>> matriz;
}