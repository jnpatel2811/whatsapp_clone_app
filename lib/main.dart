import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp clone demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Text("WhatsApp clone demo")///new MyHomePage(title: 'WhatsApp clone demo'),
    );
  }
}