import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Task',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random random = Random();
  Color color = Colors.white;
  Color textcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text("Test Task"),
        centerTitle: true,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              random.nextDouble(),
            );
          });
        },
        onDoubleTap: () {
          setState(() {
            textcolor = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              random.nextDouble(),
            );
          });
        },
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              fontSize: 24,
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
