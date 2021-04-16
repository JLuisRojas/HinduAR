import 'package:flutter/material.dart';
import 'package:hindu_ar/screens/home.dart';

void main() {
  runApp(MaterialApp(
    home: HinduArScreen()
  ));
}

class HinduArScreen extends StatefulWidget {

  @override
  _HinduArScreen createState() => _HinduArScreen();
}

class _HinduArScreen extends State<HinduArScreen>{

  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
