import 'package:flutter/material.dart';
import 'package:flutter_tex_example/screens/main_panel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MathApp',
      home: MainPanel(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans', primaryColor: Colors.green, 
      primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white))),
    );
  }
}