import 'package:flutter/material.dart';
import 'dart:io';

import 'main.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Future<bool> exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Apakah Anda yakin ingin keluar dari aplikasi?'),
        title: Text('Konfirmasi Keluar'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'TIDAK',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          FlatButton(
            child: Text(
              'YA',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () => exit(0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final statusBar = MediaQuery.of(context).padding.top;

    return WillPopScope(
      onWillPop: exitDialog,
      child: Scaffold(
        backgroundColor: colorWhite,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.15,
                top: statusBar,
              ),
              width: screenWidth * 0.8,
              child: Column(
                children: [
                  Image.asset('assets/images/proxim_text.png'),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 32,
                    ),
                  ),
                  Text(
                    'Selamat datang di Proxim!',
                    textScaleFactor: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                    ),
                  ),
                  Text(
                    'Aplikasi nomor 1 untuk mencari dan mempopulerkan UMKM di sekitarmu.',
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  color: colorBlue,
                  height: 80,
                  minWidth: 256,
                  onPressed: () {
                    Navigator.pushNamed(context, 'SellerMenu');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(40),
                    ),
                  ),
                  textColor: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.storefront,
                        size: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                      ),
                      Text(
                        'Info Toko',
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                        ),
                        textScaleFactor: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: colorGreen,
                  height: 80,
                  minWidth: 256,
                  onPressed: () {
                    Navigator.pushNamed(context, 'BuyerMenu');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(40),
                    ),
                  ),
                  textColor: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                      ),
                      Text(
                        'Cari Toko',
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                        ),
                        textScaleFactor: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 32,
              ),
            ),
            Text('Sudah masuk sebagai $merchantSellerName.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bukan Anda? '),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'LoginMenu');
                  },
                  child: Text(
                    'Ganti akun.',
                    style: TextStyle(
                      color: colorGreen,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
