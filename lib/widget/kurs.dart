import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(title: Text('Курсы обучения')),
    ));
  }
}
