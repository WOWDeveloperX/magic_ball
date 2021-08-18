import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
 
int leftDiceNumber = 1;

  void clicked() {
    setState(() {
      print('I got clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          clicked();
        },
        child: (Image.asset('images/ball1.png')),
      ),
    );
  }
}
