import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: Text('Mероприятия'),
      ),
    ));
  }
}
