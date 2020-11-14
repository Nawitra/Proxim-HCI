import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: colorWhite,
    ),
  );
}

class MerchantProducts extends StatefulWidget {
  final bool isSeller;

  MerchantProducts(this.isSeller);

  @override
  _MerchantProductsState createState() => _MerchantProductsState(isSeller);
}

class _MerchantProductsState extends State<MerchantProducts> {
  final bool isSeller;

  _MerchantProductsState(this.isSeller);

  reviewClosed() {
    showToast(
      'Mohon maaf, untuk saat ini fitur ini belum dapat diakses.',
      borderRadius: BorderRadius.all(
        Radius.circular(100),
      ),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: colorWhite,
      ),
      child: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Scaffold(
          backgroundColor: colorWhite,
          appBar: AppBar(
            brightness: Brightness.dark,
            centerTitle: true,
            toolbarHeight: 96,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            title: Text(
              merchantName,
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.w300,
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    colorGreen,
                    colorBlue,
                  ],
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Yang Paling Laku',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/merchant1_titleimage.png',
                        height: 128,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 128,
                        width: screenWidth - 160,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            colors: [
                              colorGreen,
                              colorBlue,
                            ],
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Seblak Original',
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 16,
                              ),
                            ),
                            Text(
                              'Seblak basah dengan 2 pilihan topping dan bumbu rahasia.',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: colorBlue,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        minWidth: 120,
                        child: Text(
                          'Lihat di Peta',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.25,
                        ),
                      ),
                      Visibility(
                        visible: isSeller,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: 16,
                              ),
                            ),
                            MaterialButton(
                              color: colorBlue,
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  'MerchantConfig',
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(32),
                                ),
                              ),
                              minWidth: 120,
                              child: Text(
                                'Atur Toko',
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
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Produk Lainnya',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MerchantItem(
                    'assets/images/merchant1_image1.jpg',
                    'Seblak Mie',
                    'Seblak basah berisi ceker dengan berbagai topping.',
                  ),
                  MerchantItem(
                    'assets/images/merchant1_image2.png',
                    'Seblak Ceker',
                    'Seblak basah berisi mie dengan berbagai topping.',
                  ),
                  MerchantItem(
                    'assets/images/merchant1_image3.jpg',
                    'Ceker Pedas',
                    'Menu olahan ceker yang dibuat dengan bumbu pedas.',
                  ),
                  MerchantItem(
                    'assets/images/merchant1_image4.png',
                    'Seblak Tulang',
                    'Seblak basah yang berisi tulang ayam dengan bumbu pedas gurih.',
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 16,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Ulasan',
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 8,
                          ),
                        ),
                        Text(
                          '4,7',
                          textScaleFactor: 1.25,
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 2,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: colorBlack,
                        ),
                      ],
                    ),
                  ),
                  ReviewBox(
                    'ENAK BANGET!!',
                    'Rasanya enak banget, pedesnya juga udah passss',
                  ),
                  ReviewBox(
                    'Recommended banget',
                    'Pertama kali beli disini. Saya sangat suka rasanya. Seblaknya asli lagi!',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        color: colorBlue,
                        onPressed: () => reviewClosed(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: Text(
                          'Tambah Ulasan',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                      ),
                      MaterialButton(
                        color: colorBlue,
                        onPressed: () => reviewClosed(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(32),
                          ),
                        ),
                        child: Text(
                          'Lihat Ulasan Lain',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 32,
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

class MerchantItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  MerchantItem(
    this.image,
    this.title,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 96,
            width: 128,
            fit: BoxFit.cover,
          ),
          Container(
            height: 96,
            width: screenWidth - 160,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 16,
                  ),
                ),
                Text(
                  description,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewBox extends StatelessWidget {
  final String reviewTitle;
  final String reviewText;

  ReviewBox(
    this.reviewTitle,
    this.reviewText,
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: Container(
        height: 80,
        width: screenWidth - 32,
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: colorBlack,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reviewTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 8,
              ),
            ),
            Text(
              reviewText,
            ),
          ],
        ),
      ),
    );
  }
}
