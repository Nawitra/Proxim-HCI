import 'package:flutter/material.dart';

import 'package:proxim/shared/constants.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      body: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Image.asset('assets/img/proxim_text.png'),
              ],
            ),
          ),
          SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
