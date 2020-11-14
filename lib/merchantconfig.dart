import 'package:flutter/material.dart';

import 'main.dart';

class MerchantConfig extends StatefulWidget {
  @override
  _MerchantConfigState createState() => _MerchantConfigState();
}

class _MerchantConfigState extends State<MerchantConfig> {
  TextEditingController merchantSellerNameField = TextEditingController()
    ..text = merchantSellerName;
  TextEditingController merchantUsernameField = TextEditingController()
    ..text = merchantUsername;

  TextEditingController merchantEmailField = TextEditingController()
    ..text = merchantEmail;
  TextEditingController merchantPasswordField = TextEditingController();
  TextEditingController merchantNameField = TextEditingController()
    ..text = merchantName;
  TextEditingController merchantDescriptionField = TextEditingController()
    ..text = merchantDescription;
  TextEditingController merchantAddressField = TextEditingController()
    ..text = merchantAddress;
  TextEditingController merchantOpenTimeField = TextEditingController()
    ..text = merchantOpenTime;
  TextEditingController merchantCloseTimeField = TextEditingController()
    ..text = merchantCloseTime;

  @override
  Widget build(BuildContext context) {
    void saveForm() {
      setState(
        () {
          merchantSellerName = merchantSellerNameField.text;
          merchantUsername = merchantUsernameField.text;
          merchantEmail = merchantEmailField.text;
          merchantPassword = merchantPasswordField.text;
          merchantName = merchantNameField.text;
          merchantDescription = merchantDescriptionField.text;
          merchantAddress = merchantAddressField.text;
          merchantOpenTime = merchantOpenTimeField.text;
          merchantCloseTime = merchantCloseTimeField.text;
          Navigator.pop(context);
        },
      );
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
          appBar: AppBar(
            title: Text(
              'Profil Toko',
            ),
          ),
          backgroundColor: colorWhite,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 256,
                      width: 256,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/avatar_blank.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 32,
                    ),
                  ),
                  Text(
                    'Informasi Penjual',
                    textScaleFactor: 1.5,
                  ),
                  MerchantTextField(merchantSellerNameField, 'Nama'),
                  MerchantTextField(merchantUsernameField, 'Username'),
                  MerchantTextField(merchantEmailField, 'Alamat Email'),
                  MerchantTextField(merchantPasswordField, 'Password'),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 32,
                    ),
                  ),
                  Text(
                    'Informasi Toko',
                    textScaleFactor: 1.5,
                  ),
                  MerchantTextField(merchantNameField, 'Nama Toko'),
                  MerchantTextField(merchantDescriptionField, 'Deskripsi Toko'),
                  MerchantTextField(merchantAddressField, 'Alamat Toko'),
                  MerchantTextField(merchantOpenTimeField, 'Jam Buka Toko'),
                  MerchantTextField(merchantCloseTimeField, 'Jam Tutup Toko'),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 32,
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      color: colorGreen,
                      onPressed: () => saveForm(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(32),
                        ),
                      ),
                      child: Text(
                        'Simpan',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.25,
                      ),
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

class MerchantTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;

  MerchantTextField(
    this.controller,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: colorGreen,
      obscureText: text == 'Password' ? true : false,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(
          color: colorBlack,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorBlue,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
