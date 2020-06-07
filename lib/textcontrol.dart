import 'package:flutter/material.dart';

class MagicButton extends StatelessWidget {
  final Function nextText;
  final int index;
  final Function restartApp;

  MagicButton(this.nextText, this.index, this.restartApp);

  @override
  Widget build(BuildContext context) {
    if (index < 7) {
      return Center(
          child: RaisedButton(
            child: Text('Do you dare to press me?'),
            onPressed: nextText,
            color: Colors.red[400],
          ),
          heightFactor: 5);
    } else {
      return Center(
          child: RaisedButton(
            child: Text('Restart me'),
            onPressed: restartApp,
            color: Colors.red[400],
          ),
          heightFactor: 5);
    }
  }
}
