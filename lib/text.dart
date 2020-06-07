import 'package:flutter/material.dart';

import 'package:flutter_assignment1/main.dart';

class DisplayText extends StatelessWidget {
  final displayText = [
    'Come on click the button!',
    'Click it again, I dare you ^^',
    'You sure you want to click me again?',
    "Oh no you didn't :o",
    'What again?!',
    'Stop it please it hurts',
    'Okay, one more time ;/',
    'Okay, now I am done ..'
  ];


  final int index;

  DisplayText(this.index);
 
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      displayText[index],
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ));
  }
}
