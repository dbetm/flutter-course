var global = !false; // variable global

void main() {
  bool activado = true;
  // asignaci+on dinámica: var activado = true;
  print(activado);
  if(activado) print("Motor funciona");
  else print("Motor apagado");
  
  if(global) print("hey");
}