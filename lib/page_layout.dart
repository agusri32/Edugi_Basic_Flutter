import 'package:flutter/material.dart';

class PageLayout extends StatefulWidget {
  PageLayoutState createState() => PageLayoutState();
}

class PageLayoutState extends State {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Layout Design'),
        backgroundColor: Colors.lightGreen,
      ),

      //Layout
      body: Container(
          margin: EdgeInsets.all(10.0), //CODE BARU UNTUK MENGATUR MARGIN
          child: Column(
              children: <Widget> [

                Card(
                  child: Column(
                      children: <Widget>[
                        Image.network('https://flutter.io/images/homepage/header-illustration.png'),
                        Text('Belajar Flutter')
                      ]
                  ),
                ),

              ]
          )
      )

    );
  }
}