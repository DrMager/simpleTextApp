import 'package:flutter/material.dart';

import './text.dart';
import './textcontrol.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  var _textIndex = 0;

  void _changeIndex() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
    print(_textIndex);
  }

  void _restartApp() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's go develop!"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            children: <Widget>[
              DisplayText(_textIndex),
              MagicButton(_changeIndex, _textIndex, _restartApp)
            ],
          ),
        ),
      ),
    );
  }
}
