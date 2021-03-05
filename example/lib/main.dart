import 'package:flutter/material.dart';
import 'package:ftools/ftools.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          Ftools.pressedHome;
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Column(
            children: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.home),
                label: Text('按下 Home 键（仅支持Android）'),
                onPressed: () {
                  Ftools.pressedHome;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
