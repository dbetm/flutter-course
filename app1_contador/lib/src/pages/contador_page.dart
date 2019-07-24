import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => new _ContadorPageState();
}

// con guión bajo se hace privada
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 24.4);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // El Scaffold es un widget que implementa la estructura básica de una capa de material design
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            // Sin reutilizar
            // Text('Número de tabs:', style: TextStyle(fontSize: 24.4),),
            Text(_conteo.toString(), style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      // floatingActionButton: FloatingActionButton(
      //   // si a onPressed = null, es equivalente a tener disabled=true
      //   // (){} <- es una función anónima
      //   child: Icon(Icons.plus_one),
      //   onPressed: (){
      //     print("hola mundo");
      //     _conteo++; // debemos usar un statefulWidget
      //     // Redibujamos con el nuevo estado
      //     setState(() {
            
      //     });
      //   },
      // ),
      // Cambia la ubicación del botón flotante
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      // para alinear los botones a la derecha
      // el end para rows es la izquierda, en cols es abajo
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset),
        // para que expanda el ancho lo más que pueda el hijo
        Expanded(child: SizedBox()), 
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _restar),
        SizedBox(width: 6.9,), // para crear un espacio entre los iconos
        // ojo que en onPressed la llamada a la función no lleva paréntesis
        FloatingActionButton(child: Icon(Icons.plus_one),onPressed: _sumar),
      ],
    );
  }

  void _sumar() {
    // Para redibujar
    setState(() {
      _conteo++;
    });
  }

  void _restar() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}