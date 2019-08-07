import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Hola mundo"),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      // false: para evitar que se cierre al dar click fuera de la alerta
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.5)),
          title: Text("Título"),
          content: Column(
            mainAxisSize: MainAxisSize.min, // para que no se estire todo verticalmente
            children: <Widget>[
              Text("Este es un contenido random"),
              FlutterLogo(size: 50.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }
}