import 'package:flutter/material.dart';
import 'package:proxim/screens/home/home.dart';
import 'package:proxim/screens/pembeli/pembeli_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //Tambah rute di sini, buat bisa ganti-ganti screen
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        PembeliScreen.routeName: (context) => PembeliScreen(),
      },
    );
  }
}
