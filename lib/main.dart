import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_camp/widget/navigation.dart';
import 'package:trader_camp/widget/command.dart';
import 'package:trader_camp/widget/kurs.dart';
import 'package:trader_camp/widget/event.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/second': (context) => const SecondScreen(),
          '/third': (context) => const ThirdScreen(),
          '/fourth': (context) => const FourthScreen(),
        },
        title: 'Trader Camp',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        debugShowCheckedModeBanner: false,
        home: const MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: NavigationDrawer(),
        ),
      ),
    );
  }
}
