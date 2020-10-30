import 'package:flutter/material.dart';

import 'package:proxim/shared/constants.dart';
import 'package:proxim/screens/pembeli/pembeli_main.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  //Ini untuk
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cream,
      body: Column(
        children: <Widget>[
          SizedBox(height: 90.0),
          //Logo proxim yang text
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Image.asset('assets/img/proxim_text.png'),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.21),
          //Info toko, inkwell dipake biar bisa ganti screen pas dipencet
          InkWell(
            child: Container(
              width: 256,
              height: 86,
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.30),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/img/info_toko.png'),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(PembeliScreen.routeName);
            },
          ),
          SizedBox(height: 60.0),
          //Cari toko
          InkWell(
            child: Container(
              width: 256,
              height: 86,
              margin: EdgeInsets.only(left: 105),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/img/cari_toko.png'),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(PembeliScreen.routeName);
            },
          ),
          SizedBox(height: 30),
          Column(
            children: <Widget>[
              Text(
                "Sudah masuk sebagai Yuli Nasution.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w300,
                ),
              ),
              InkWell(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Bukan Anda? ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Ganti akun",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff6b9080),
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
