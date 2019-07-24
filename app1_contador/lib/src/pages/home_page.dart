import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Nota: La mayoría de los widgets solo pueden tener un hijo
class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 24.4);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // El Scaffold es un widget que implementa la estructura básica de una capa de material design
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de tabs:', style: estiloTexto),
            // Sin reutilizar
            // Text('Número de tabs:', style: TextStyle(fontSize: 24.4),),
            Text(conteo.toString(), style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // si a onPressed = null, es equivalente a tener disabled=true
        // (){} <- es una función anónima
        child: Icon(Icons.plus_one),
        onPressed: (){
          print("hola mundo");
          // conteo += 1; // debemos usar un statefulWidget
        },
      ),
      // Cambia la ubicación del botón flotante
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}