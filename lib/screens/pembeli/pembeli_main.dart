import 'package:flutter/material.dart';
import 'package:proxim/screens/home/home.dart';

class PembeliScreen extends StatefulWidget {
  static const routeName = 'pembeli_main';
  @override
  _PembeliScreenState createState() => _PembeliScreenState();
}

class _PembeliScreenState extends State<PembeliScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            InteractiveViewer(
              boundaryMargin: EdgeInsets.only(
                left: 250,
                right: 250,
              ),
              minScale: 0.8,
              maxScale: 1.5,
              child: OverflowBox(
                minWidth: 0.0,
                minHeight: 0.0,
                maxWidth: double.infinity,
                child: Image(
                    image: AssetImage('assets/img/map_pin.png'),
                    fit: BoxFit.fill,
                    alignment: Alignment.center),
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
