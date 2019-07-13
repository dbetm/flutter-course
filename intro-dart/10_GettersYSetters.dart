void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);
  print("Área: ${cuadrado.area}");
}

class Cuadrado {
  // Ponerle un guión bajo para hacerlos privados
  double _lado;
  double _area;
  // Métodos de acceso
  set lado(double val){
    if(val <= 0) throw("El lado no puede ser <= 0");
    _lado = val;
  }
  
  double get area {
    return _lado * _lado;
  }
  // Manera inline
  // double get area => _lado * _lado;
  
  String toString() => 'Lado: $_lado Área: $_area';
}
