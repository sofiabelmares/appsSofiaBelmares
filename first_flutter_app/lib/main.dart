import 'package:first_flutter_app/main_content.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "First App",
    home: MainContent()
  )
);



//Dentro de runapp siempre debe venir un widget, en este caso es un widget para centrar
/*void main() => runApp(Center(
  child: Text("Hello World",
              textDirection: TextDirection.ltr)
));*/

//Otro ejemplo de main
//{
//    runApp(myApp());
//}

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: null //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}*/

