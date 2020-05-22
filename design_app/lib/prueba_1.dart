import 'package:flutter/material.dart';

class Prueba1 extends StatelessWidget{
  @override
  Widget texto = Container(
    child: Column(
      children: <Widget>[
        Text("Prueba número 1"),
        Text("Holaas fdfdasdadacsfa"),
        Center(
        child: Row(children: <Widget>[
          Row(children: <Widget>[
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
            Icon(Icons.star, color: Colors.black),
          ],),
          Text("170 Reviews")
        ],)
  )
      ],
    )
  );

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Prueba 1"),),
      body: Column(
        children: <Widget>[
          Image.asset('assets/img/designapphorizontal.jpg',height: 240,width: 600, fit: BoxFit.cover,),
          texto
        ],
      ),
    );
  }

}