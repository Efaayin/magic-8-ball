import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Image.asset('images/ball$magicBallNumber.png'),
            onPressed: () {
              setState(() {
                magicBallNumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
