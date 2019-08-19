import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: HelloPage('Hello World')
//      home: Scaffold(
//        appBar: AppBar(title: Text('Hello World'),
//        ), //AppBar
//          body: Text('헬로 월드', style: TextStyle(fontSize: 30),
//          )), //Text, Scaffold
    ); //MaterialApp
  }
}

class HelloPage extends StatefulWidget {

  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
      ), //appbar
        body: Text(widget.title, style: TextStyle(fontSize: 30)));
  }
}
