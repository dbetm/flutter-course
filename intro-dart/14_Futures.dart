// Son como las promesas

void main() {
  print("Estamos a punto de pedir datos");
  httpGet2('https://api.nada.com/aliens').then((data) {
    print(data);
  });
  print("No me gusta esperar respuestas");
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

