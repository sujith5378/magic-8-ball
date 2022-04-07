import 'dart:math';
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
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask Me Anything"),
      ),
      body: Ball()

    );
  }
}

class Ball extends StatefulWidget {
  
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: deprecated_member_use
      child: FlatButton(onPressed:() {
        setState(() {
         ballnumber = Random().nextInt(4)+1; 
        });
        
      }, child:Image.asset('images/ball$ballnumber.png')),
      
    );
}
}