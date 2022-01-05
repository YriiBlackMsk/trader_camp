import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: Text('Лидеры нашей компании'),
      ),
    ));
  }
}
