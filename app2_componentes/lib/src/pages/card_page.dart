import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card pages"),
      ),
      body: ListView(
        // Padding como en CSS3
        padding: EdgeInsets.all(8.0),
        // padding: EdgeInsets.symmetric(horizontal: 12),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      // entre más elevado la sombra se hace más grande
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy un título"),
            subtitle: Text("Hoy es miércoles, en el último día de vacaciones"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias, // para que la imagen respete los bordes del card, que no se salga
      elevation: 12.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            // Placeholder es una imagen que se encuentra en el dispositivo, porque se carga rápido
            image: NetworkImage("https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            // cómo debe ocupar el espacio la imagen
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage("https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg"),
            
          // ),
          Container(
            padding: EdgeInsets.all(10.9),
            child: Text("No tengo idea de qué poner")
          ),
        ],
      ),
    );
  }
}