
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:posts/comments.dart';
import 'package:posts/gradient_app_bar.dart';
import 'package:posts/posts.dart';
import 'package:posts/globals.dart' as globals;

class CommentsList extends StatefulWidget {
  bool liked = false;
  @override
  _CommentsListState createState() => _CommentsListState();
  final Post post;
  CommentsList({this.post});
}

class _CommentsListState extends State<CommentsList> {
  
  String url = "https://jsonplaceholder.typicode.com/posts/${globals.postId}/comments"; //usé el método get de jsonplaceholder proporcionadole el id del post
  Comments comments;
  String jsonPlaceHolder_get;
  @override
  void initState() {
    super.initState();
    fetchData(); // Método para hacer petición al API
  }

  void fetchData() async{
    var response = await http.get(url);
    jsonPlaceHolder_get = response.body;
    jsonPlaceHolder_get = "{\"comment\":${jsonPlaceHolder_get}}"; //agrego la parte del json que le falta para que funcione junto con la clase commments.dart
    var json_comment = jsonDecode(jsonPlaceHolder_get);
    comments = Comments.fromJson(json_comment);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    Widget postDetails = Padding( //Widget para mostrar el post que se seleccionó
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width:  MediaQuery.of(context).size.width - 20,
        decoration: 
          BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.circular(8),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 3.0,
                offset: new Offset(0.0, 5.0)
              )
            ]
          ),
          child: ListTile(
            title: Text(
              "\n"+ globals.postTitle,
              style:  GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: Colors.black
                )
              ),
            ),
            subtitle: Text(
              "\n"+globals.postBody + "\n",
              textAlign: TextAlign.justify,
              style:  GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Colors.black
                )
              ),
            ),
            trailing: FloatingActionButton(
              //disabledElevation: 0,
              elevation: 0,
              onPressed: (){
                setState(() {
                  widget.liked = !widget.liked;
                  print(widget.liked);
                });
              },
              backgroundColor: Colors.transparent,
              child: Icon(widget.liked? Icons.favorite : Icons.favorite_border, size: 30, color: Colors.red), //Para cambiar el color del icono del corazon al darle tap
            ),
          )
      )
    );

    Widget postComments = comments==null ? Center(child: CircularProgressIndicator(),) : //Widget para crear una lista de los comentarios correspondientes al post
      Expanded(
        child: ListView(
        children: comments.comment.map((c) => Padding(
          padding: const EdgeInsets.all(3),
            child: Stack(
              children: <Widget>[
                Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://cdn.iconscout.com/icon/free/png-512/anonymous-user-3-1133988.png")
                            )
                        ),
                      ),
                Container(
                margin: EdgeInsets.only(left: 70.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.circular(8),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      offset: new Offset(0.0, 1.0)
                    )
                  ]
                ),
                child: ListTile( 
                  title: 
                    Text(
                      c.name,
                      textAlign: TextAlign.justify,
                      style:  GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          color: Colors.black
                        )
                      ),
                    ),
                  subtitle: 
                    Text(
                      "e-mail:" + c.email + "\n" + c.body,
                      textAlign: TextAlign.justify,
                      style:  GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          color: Colors.black
                        )
                      ),
                    ),                 
                  ),
                ),         
              ],)
            )).toList(), //Crea una lista de los elementos de la iteración del map
          ),
      );

    return Scaffold(
      body: Column (children: <Widget>[
        GradientAppBar(), //la barra superior gradiente
        postDetails, //el post que se seleccionó
        postComments //los comentarios de ese post
      ],)
    );
  }

}