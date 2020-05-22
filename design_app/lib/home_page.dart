import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*Widget firstRow = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/designappvertical.jpg'),
              fit: BoxFit.cover
          )
      ),
    );*/
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Flutter Design", style: TextStyle(fontFamily: 'PlasticBeauty', fontSize: 50, color: Colors.white)),
      ),
      body: Stack(
        children: <Widget>[
          //firstRow,
          //secondRow,
          //thirdRow
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/designappvertical.jpg'),
                  fit: BoxFit.cover
              )
            ),
          ),
          Center(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8)
              ),
            ),
          ),
          Center(
            child: Text("Práctica 1", style: TextStyle(fontFamily: 'PlasticBeauty', fontSize: 70, color: Colors.white),),
          ),
        ],
      ),
    );
  }
}