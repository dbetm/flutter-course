// Son como las promesas

void main() async {
  print("Estamos a punto de pedir datos");
  // Usamos await para esperar la respuesta, la función debe tener
  // async
  String data = await httpGet2('https://api.nada.com/aliens');
  print(data);
  print("No me gusta esperar respuestas, pero ya qué");
}

// Regresa cualquier cosa (dinámico)
Future httpGet(String url) {
 
}

Future<String> httpGet2(String api) {
  return Future.delayed(new Duration(seconds: 4), () {
    return "Hola mundo";
  });
  
  // función anónima o callback: () {...}
}

// Los constructores en una clase no pueden ser asíncronos
class Heroe {
  /* no es correcto
   * Heroe() async{}   
   */
}


