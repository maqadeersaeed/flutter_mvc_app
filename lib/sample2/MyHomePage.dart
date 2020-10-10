import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc_app/sample2/controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".
  final String title = 'Flutter Demo Home Page';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends StateMVC<MyHomePage> {
  final MyHomeController _myHomeController = MyHomeController.controller;

  @override
  Widget build(BuildContext context) {
    print('_con :: $_myHomeController');
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
            ),
            Text(
              '${_myHomeController.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(_myHomeController.incrementCounter);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
