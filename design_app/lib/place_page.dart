import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlacePage extends StatefulWidget{
  bool liked = true;
  @override
  State<StatefulWidget> createState() => new PlacePageState();
}

class PlacePageState extends State<PlacePage>{

  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Canales de Xochimilco",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8), //Espacio entre las dos lineas de texto
                  ),
                  Text("Xochimilco, Ciudad de México, México",
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                ],
              )
          ),
          Icon(widget.liked? Icons.favorite : Icons.favorite_border, color: Colors.red),
          Text("41"),
        ],
      ),
    );

    Widget buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Que queden a la misma distancia unos de otros
      children: <Widget>[
        _buildButtonsColumn(Colors.blue, Icons.phone, "CALL"),
        _buildButtonsColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonsColumn(Colors.blue, Icons.share, "SHARE"),
      ],
    );

    Widget description = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        softWrap: true, textAlign: TextAlign.justify,
      ),
    );

    Widget bodyPortrait = ListView( //antes habia un column, ListView ayuda al scroll
      children: <Widget>[
        Image.asset(
          'assets/img/xochi.jpg',
          height: 240,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ), //BoxFit.cover puede solucionar el ancho de la imagen en la pantalla.
        title,
        buttons,
        description
      ],
    );

    Widget bodyLandscape = Row(
      children: <Widget>[
        Image.asset(
          'assets/img/xochi.jpg',
          height: MediaQuery.of(context).size.height,
          width: 280,
          fit: BoxFit.cover,
        ), //B
        Expanded(
            child: ListView(
              children: <Widget>[
                title,
                buttons,
                description
              ],
            ))
      ],
    );

    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title:Text("Place Page", style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: 'PlasticBeauty'))),
        body: OrientationBuilder(
            builder: (context, orientation){
              return orientation == Orientation.portrait ? bodyPortrait : bodyLandscape; // esto es como un if-else
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              widget.liked = !widget.liked;
              print(widget.liked);
            });
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.favorite, color: Colors.white,),
        ),
    );
  }

  Widget _buildButtonsColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min, //Previene que no se desajuste cuando la pantalla cambie, también se puede poner en el cross si quieren
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top:8),
          child: Text(label, style: TextStyle(color: color),),
        )
      ],
    );
  }
}