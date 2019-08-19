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
  }
}

class HelloPage extends StatefulWidget {

  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child : Icon(Icons.add),
          onPressed: _changeMessage),
      appBar: AppBar(
          title: Text(widget.title),
      ), //appbar
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30)),
                Text('$_counter', style: TextStyle(fontSize: 30)),
              ],//widget
            )//column
        )// center
    );

  }

  void _changeMessage(){
    setState(() {
      _message = '헬로 월드';
      _counter ++;

    });
  }
}
