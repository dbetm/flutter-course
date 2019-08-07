import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);
  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = new ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      // Agregar la división
      lista.add(new Divider());
      // Agregar ambos con operador cascada
      /*
      lista..add(tempWidget)
           ..add(new Divider());
      */
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    // Usando el método map
    var widgets = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + "!"),
            subtitle: Text("How are you?"),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }

}