import 'package:design_app/place_page.dart';
import 'package:flutter/material.dart' ;
//ANA SOFIA BELMARES GUALAJARA
class Examen extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    Widget bodyPortrait = Container(
      height: MediaQuery.of(context).size.height, //todo el alto
      width: MediaQuery.of(context).size.width, //todo el ancho
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: FlutterLogo(size: 100,),
          ),
          Padding(
              padding: EdgeInsets.only(top:16),
              child: Text(
                "TravelApp",
                textAlign: TextAlign.center, //O se puede meter todo dentro de un center
                style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 24,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    child: Material(
                      color: Colors.blue,
                      elevation: 5.0, //sombra
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(Icons.account_circle, color: Colors.white,),
                          ),
                          Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "User",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    child: Material(
                      color: Colors.blue,
                      elevation: 5.0, //sombra
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(Icons.lock, color: Colors.white,),
                          ),
                          Container(
                            width: 250,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(top: 20, left: 8, right: 8),
            child: Container(
              width: 300,
              height: 130,
              padding: EdgeInsets.all(40),
              child: RaisedButton(
                onPressed: (){
                  //Navigator.pop(context); //Regresar atrás con código
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlacePage()
                      )
                  );
                },
                elevation: 5,
                color: Colors.blue,
                child: Text(
                  "Enter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );

    Widget bodyLandscape = Container(
      height: MediaQuery.of(context).size.height, //todo el alto
      width: MediaQuery.of(context).size.width, //todo el ancho
      child: ListView(
        children: <Widget>[
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: FlutterLogo(size: 150, colors: Colors.red),
                    ), //Logo
                    Padding(
                        padding: EdgeInsets.only(top:16),
                        child: Text(
                          "TravelApp",
                          textAlign: TextAlign.center, //O se puede meter todo dentro de un center
                          style: TextStyle(
                              fontFamily: "OpenSans",
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.red
                          ),
                        )
                    ),//Texto debajo del logo
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Welcome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red[400],
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ), //Texto de WELCOME
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 300,
                              child: Material(
                                color: Colors.red,
                                elevation: 5.0, //sombra
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Icon(Icons.account_circle, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: TextFormField(
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "User",
                                            fillColor: Colors.white,
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),//Barrita de Usuario
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 300,
                              child: Material(
                                color: Colors.red,
                                elevation: 5.0, //sombra
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Icon(Icons.lock, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: TextFormField(
                                          obscureText: true,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Password",
                                            fillColor: Colors.white,
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),//Barrita de Password
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  width: 300,
                  height: 130,
                  padding: EdgeInsets.all(40),
                  child: RaisedButton(
                    onPressed: (){
                      //Navigator.pop(context); //Regresar atrás con código
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlacePage()
                          )
                      );
                    },
                    elevation: 5,
                    color: Colors.red,
                    child: Text(
                      "Enter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
              )//Boton de ENTER,
            ],),
        ],
      ),
    );


    return Scaffold(
        body: OrientationBuilder(
            builder: (context, orientation){
              return orientation == Orientation.portrait ? bodyPortrait : bodyLandscape; // esto es como un if-else
            })
    );
  }
}
