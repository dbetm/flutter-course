import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar page"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://miro.medium.com/max/1200/1*DChYYPZxxnQb8P9vplA9NQ.jpeg"),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 7.9),
            child: CircleAvatar(
              child: Text("DB"),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://image.cnbcfm.com/api/v1/image/105229432-GettyImages-664861382.jpg?v=1561491952"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}