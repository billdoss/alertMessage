import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      color: Colors.white,
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'ALERTE SANTE ',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: _buildRow(),
            ),
          ),
          Expanded(
            child: Center(
              child: _buildRow(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildRow(){
  return Row(
    children: <Widget>[
      mywidget("assets/sante.jpg"),
      mywidget("assets/fireteam.jpg")
    ],
  );
}

Widget mywidget(String imageroute){
  return Center(
    child: InkWell(
      //onTap: ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 200,
            width: 155,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
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
                  Image.asset(
                      imageroute,),
                  Text("ALERTE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            )
        ),
      ),
    ),
  );
}

Widget _buildColumn(String text){
  return Expanded(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top :10.0, right: 10.0, left: 10.0),
          child: Container(
            width: 200,
            height: 100.0,
            color: Colors.white,
            child: Icon(Icons.clear_all, color: Colors.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 150.0,
            height: 50.0,
            color: Colors.white,
            child : Text(text, style: TextStyle(color: Colors.grey)),
          ),
        )
      ],
    ),
    flex: 2,
  );
}

Widget _buildIcon(){
  return Icon(Icons.star, color: Colors.red);
}

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

