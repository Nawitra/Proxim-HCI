import 'package:flutter/material.dart';
import 'package:proxim/screens/home/home.dart';
import 'package:proxim/screens/pembeli/pembeli_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        PembeliScreen.routeName: (context) => PembeliScreen(),
      },
    );
  }
}
