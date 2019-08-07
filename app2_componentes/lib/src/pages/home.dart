import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
// Páginas
import 'package:componentes/src/pages/alert_page.dart';

// CTRL+Z Para arreglar tabulación cuando se hace un fix
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    //print(menuProvider.opciones); // esto no funcionó por lo asíncrono
    /* Esto haría que la app se vea trabada mientra obtiene los datos
    menuProvider.cargarData().then((opciones) {
      print("opciones: ");
      print(opciones);
    }); */
    // La solución es usar un future builder
    return FutureBuilder(
      future: menuProvider.cargarData(),
      // definir la data que tendrá por defecto mientras no se ha resuelto el Future
      initialData: [], // opcional
      // para poder dibujar
      // se dispara en 3 momentos:
      // 1) Al estar obteniendo la data,
      // 2) Cuando se obtiene la data
      // 3) Cuando hubo un error
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _cargarListaItems(snapshot.data, context),
        );
      },
    );

  }

  List<Widget> _cargarListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    // if(data == null) return []; -> si no ponemos initialData: []

    data.forEach((opt) {
      final Widget widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){
          // ## Forma de navegación simple
          // final route = MaterialPageRoute(
          //   builder: (context) {
          //     return AlertPage();
          //   }
          // );
          // Navigator.push(context, route);

          // ## Forma de navegar con rutas con nombre en string
          Navigator.pushNamed(context, opt["ruta"]);
        },
      );
      opciones..add(widgetTemp)
              ..add(new Divider());
    }); 
    return opciones;
  }
}