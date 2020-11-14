import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'main.dart';

class LoginMenu extends StatefulWidget {
  @override
  _LoginMenuState createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  TextEditingController usernameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final statusBar = MediaQuery.of(context).padding.top;

    const toast1 = 'Harap masukkan username dan password Anda.';
    const toast2 = 'Harap masukkan username Anda.';
    const toast3 = 'Harap masukkan password Anda.';
    const toast4 = 'Login berhasil.';
    const toast5 = 'Harap masukkan kredensial Anda yang sesuai.';
    const toast6 = 'Harap masukkan username Anda.';
    final toast7 =
        'Tautan untuk mereset password akun Anda sudah dikirim ke alamat email $merchantEmail.';
    const toast8 = 'Harap masukkan username Anda yang sesuai.';

    void showLoginToast() {
      if (usernameField.text == '' && passwordField.text == '') {
        showToast(
          toast1,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      } else if (usernameField.text == '') {
        showToast(
          toast2,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      } else if (passwordField.text == '') {
        showToast(
          toast3,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      } else if (usernameField.text == merchantUsername &&
          passwordField.text == merchantPassword) {
        showToast(
          toast4,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
        Navigator.pop(context);
      } else {
        showToast(
          toast5,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      }
    }

    void showRecoveryToast() {
      if (usernameField.text == '') {
        showToast(
          toast6,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      } else if (usernameField.text == merchantUsername) {
        showToast(
          toast7,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
          duration: Duration(
            seconds: 5,
          ),
        );
      } else {
        showToast(
          toast8,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          context: context,
        );
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Scaffold(
          backgroundColor: colorWhite,
          body: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: screenHeight * 0.15,
                      top: statusBar,
                    ),
                    width: screenWidth * 0.4,
                    child: Image.asset('assets/images/proxim_logo.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                      left: 48,
                      right: 48,
                    ),
                    child: TextField(
                      controller: usernameField,
                      cursorColor: colorGreen,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            color: colorBlue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 48,
                      right: 48,
                    ),
                    child: TextField(
                      controller: passwordField,
                      cursorColor: colorGreen,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                          borderSide: BorderSide(
                            color: colorBlue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    child: InkWell(
                      onTap: () => showRecoveryToast(),
                      child: Text(
                        'Lupa passwordmu?',
                        style: TextStyle(
                          color: colorGreen,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: colorBlue,
                    onPressed: () => showLoginToast(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: 1.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
