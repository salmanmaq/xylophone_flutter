import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Magic8Ball());
}

class Magic8Ball extends StatelessWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  void generateRandomBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          generateRandomBall();
        },
        child: Image(
          image: AssetImage('assets/images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
