import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

// import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // necesita un build, encargado de dibujar el widget
  // context, contiene la info del árbol de widgets
  @override
  Widget build(context) {
    // retornar el widget que permite la conf global de la app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center( // widget para centrar elementos hijos
        //child: HomePage();
        child: ContadorPage(),
      ),
    );
  }
}