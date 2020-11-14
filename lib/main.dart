import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainmenu.dart';
import 'loginmenu.dart';
import 'mapmenu.dart';
import 'merchantconfig.dart';
import 'merchantproducts.dart';

final colorBlack = Colors.grey[800];
const colorBlue = Color(0xFF34435E);
const colorGreen = Color(0xFF6B9080);
const colorRed = Color(0xFF89023E);
final colorWhite = Colors.grey[100];

var isMerchantOpen = true;

var merchant1 = [
  merchantName,
  merchantDescription,
  '4,7 dari 74 ulasan',
  '80 M dari lokasimu',
];
const merchant2 = [
  'Indian Fried Chicken',
  'Ayam Goreng',
  '4,9 dari 44 ulasan',
  '310 M dari lokasimu',
];
const merchant3 = [
  'Lathifah Frozen Food',
  'Nugget Ayam',
  '4,5 dari 24 ulasan',
  '840 M dari lokasimu',
];

var merchantSellerName = 'Yuli Nasution';
var merchantUsername = 'admin';
var merchantEmail = 'admin@admin.com';
var merchantPassword = 'admin123';
var merchantName = 'Warung Seblak Bu Yuli';
var merchantDescription = 'Seblak';
var merchantAddress = 'Jalan Cilendek Gang Mesjid No. 24';
var merchantOpenTime = '07:00';
var merchantCloseTime = '21:00';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: colorWhite,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainMenu(),
        routes: {
          'MainMenu': (context) => MainMenu(),
          'LoginMenu': (context) => LoginMenu(),
          'SellerMenu': (context) => MapMenu(true),
          'BuyerMenu': (context) => MapMenu(false),
          'MerchantProductsSeller': (context) => MerchantProducts(true),
          'MerchantProductsBuyer': (context) => MerchantProducts(false),
          'MerchantConfig': (context) => MerchantConfig(),
        },
        theme: ThemeData(
          accentColor: colorBlack,
          backgroundColor: colorWhite,
          primaryColor: colorWhite,
          primarySwatch: Colors.grey,
        ),
      ),
    );
  }
}
