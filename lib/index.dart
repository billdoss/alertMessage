import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'main.dart';



void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: Accueil(),
  ));
}


class Accueil extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Alert",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: acceuil(context),
        ),
      ),
    );
  }
  Widget acceuil (BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) => new MyScaffold()));},
        child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(colors: [Colors.deepPurpleAccent,
                Colors.lightBlueAccent]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20.0, // has the effect of softening the shadow
                    spreadRadius: 5, // has the effect of extending the shadow
                    offset: Offset(
                      10.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("ENVOYER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("ALERTE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            )
        ),
      ),
    );
  }
}