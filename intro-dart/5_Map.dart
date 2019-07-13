void main() {
  // Map dinámico
  Map persona = {
    'nombre': 'David',
    'edad': 21,
    'soltero': true
  };
  print(persona['nombre']);
  persona.addAll({'graduado': false});
  // Map no dinámico
  Map<int, int> yellow = {
    23: 0,
    24: 0
  };
  print(yellow);
  // Map semidinámico
  Map<String, dynamic> otro;
}