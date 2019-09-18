import 'package:flutter/material.dart';
import 'Plug.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget
{

  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'plug in',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}