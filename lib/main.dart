import 'package:flutter/material.dart';
import 'package:shopping/screen/home.dart';
import 'package:shopping/screen/shopping.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  HomePageMain createState() => HomePageMain();
}

class HomePageMain extends State<MyHomePage> {
  void initState() {
    print("Test Init State");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(),
      ),
    );
  }
}
