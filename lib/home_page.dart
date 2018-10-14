import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF128C7E),
          title: Text("Whatsapp", textAlign: TextAlign.left,),
          centerTitle: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt),),
            Tab(child: Text("Chats"),),
            Tab(child: Text("Status"),),
            Tab(child: Text("Calls"),),
          ]),
        ),
        body: TabBarView(children: [
          Column(
            children: <Widget>[
              Text("Camera"),
            ],
          ),
          Column(
            children: <Widget>[
              Text("Chats"),
            ],
          ),
          Column(
            children: <Widget>[
              Text("Stories"),
            ],
          ),
          Column(
            children: <Widget>[
              Text("Calls"),
            ],
          ),
        ]),
      ),
    );
  }
}
