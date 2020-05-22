import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:posts/comments_list.dart';
import 'package:posts/gradient_app_bar.dart';
import 'package:posts/posts.dart';
import 'package:posts/globals.dart' as globals;
import 'package:random_color/random_color.dart'; 


class PostsList extends StatefulWidget {
  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  String url = "https://raw.githubusercontent.com/sofiabelmares/posts/master/json/posts.json";
  Posts posts;

  @override
  void initState() {
    super.initState();
    fetchData(); // Método para hacer petición al API
  }

  void fetchData() async{ //Método para leer el JSON y poderlo usar
    var response = await http.get(url);
    var decodedJson = jsonDecode(response.body);
    posts = Posts.fromJson(decodedJson);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    RandomColor _randomColor = RandomColor(); //Para obtener un color aleatorio
    Color _color = _randomColor.randomColor(
      colorSaturation: ColorSaturation.highSaturation
    );

    Widget postList = posts==null ? Center(child: CircularProgressIndicator(),) : //indicador de carga
      Expanded(
        child: ListView( //listview iteratitvo que recorrerá cada elemento del json
            //crossAxisCount: 1,
            children: posts.post.map((p) => Padding(
              padding: const EdgeInsets.all(3),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CommentsList(post: p))); //llama a la clase de los comentarios del post seleccionado
                  globals.postId = p.id;
                  globals.postTitle = p.title;
                  globals.postBody = p.body;
                },
                child: Hero( //animación 
                  tag: p.title,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 1.0)
                        )
                      ]
                    ),
                    child: ListTile(
                      leading: Icon(Icons.account_circle, color: _color=_randomColor.randomColor(colorSaturation: ColorSaturation.highSaturation), size: 40.0),                      
                      title: Text(
                        p.title, 
                        style:  GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.black
                        )
                      ),),
                      trailing: Icon(Icons.feedback, color: Colors.grey[400], size: 25.0),
                    ),
                  ),
                ),
              ),
            )).toList(), //crea una lista de los elementos de las iteraciones
        ),
      );

    return Scaffold(
      body:  Column (children: <Widget>[
        GradientAppBar(), //construye el cuerpo con la barra gradiente y la lista de post
        postList
      ],)
    );
  }
}
