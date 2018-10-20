import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/UserData.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var demoChatData = [
    UserData("Jay", "Hey there!"),
    UserData("Nilay", "Flutter is so cool!"),
    UserData("Sagar", "Yeah! Nilay is right."),
    UserData("Jaydeep", "I don't know about it."),
    UserData("Mit", "Hey, how are you."),
    UserData("Kartik", "Hey, whatsapp."),
    UserData("Maulik", "Bro, this is like magic. It is so cool.."),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF128C7E),
          title: Text(
            "Whatsapp",
            textAlign: TextAlign.left,
          ),
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
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          _buildCameraLayout(),
          _buildChatsLayout(),
          _buildStatusLayout(),
          _buildCallsLayout(),
        ]),
      ),
    );
  }

  Widget _buildCameraLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.camera_alt),
      ],
    );
  }

  Widget _buildChatsLayout() {
    return ListView.builder(
      itemCount: demoChatData.length,
      itemBuilder: (context, position) {
        return InkWell(
          onTap: () {
            // TODO do something here
          },
          splashColor: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Icon(
                        Icons.account_circle,
                        size: 48.0,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              demoChatData[position].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(demoChatData[position].message,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          ),
        );
      },
    );
  }

  Widget _buildStatusLayout() {
    return Column(
      children: <Widget>[
        Text("Status"),
      ],
    );
  }

  Widget _buildCallsLayout() {
    return Column(
      children: <Widget>[
        Text("Calls"),
      ],
    );
  }
}
