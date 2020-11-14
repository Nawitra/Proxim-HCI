import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: colorWhite,
    ),
  );
}

class MapMenu extends StatefulWidget {
  final bool isSeller;

  MapMenu(this.isSeller);

  @override
  _MapMenuState createState() => _MapMenuState(isSeller);
}

class _MapMenuState extends State<MapMenu> {
  final bool isSeller;

  _MapMenuState(this.isSeller);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
      ),
      child: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Scaffold(
          body: Stack(
            children: [
              SlidingSheet(
                cornerRadius: 32,
                elevation: 8,
                padding: EdgeInsets.only(
                  bottom: screenHeight * 0.1,
                ),
                shadowColor: Colors.black12,
                snapSpec: SnapSpec(
                  snappings: [0.1, 0.8],
                ),
                body: Container(
                  height: screenHeight * 0.9,
                  child: Stack(
                    children: [
                      PhotoView(
                        backgroundDecoration: BoxDecoration(
                          color: colorWhite,
                        ),
                        imageProvider:
                            AssetImage('assets/images/map_dummy.png'),
                        minScale: PhotoViewComputedScale.covered,
                        maxScale: PhotoViewComputedScale.covered * 1.5,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                      ),
                      Visibility(
                        visible: isSeller,
                        child: Positioned(
                          bottom: 8,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                color: colorBlue,
                                onPressed: () {
                                  isSeller
                                      ? Navigator.pushNamed(
                                          context,
                                          'MerchantProductsSeller',
                                        )
                                      : Navigator.pushNamed(
                                          context,
                                          'MerchantProductsBuyer',
                                        );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32),
                                  ),
                                ),
                                minWidth: 112,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  right: screenWidth * 0.35,
                                ),
                              ),
                              MaterialButton(
                                color: isMerchantOpen ? colorRed : colorGreen,
                                onPressed: () {
                                  setState(
                                    () {
                                      isMerchantOpen = !isMerchantOpen;
                                    },
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(32),
                                  ),
                                ),
                                minWidth: 112,
                                child: Text(
                                  isMerchantOpen ? 'Tutup Toko' : 'Buka Toko',
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
                    ],
                  ),
                ),
                builder: (context, state) {
                  return Container(
                    height: 505,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 16,
                            top: 16,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                              color: colorBlack,
                            ),
                            height: 8,
                            width: 64,
                          ),
                        ),
                        Text(
                          'UMKM di Sekitarmu',
                          textScaleFactor: 2,
                          style: TextStyle(
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              MerchantList(
                                'assets/images/merchant1_avatar.jpeg',
                                merchantName,
                                merchantDescription,
                                merchant1[2].toString(),
                                merchant1[3].toString(),
                                isSeller,
                                true,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 16,
                                ),
                              ),
                              MerchantList(
                                'assets/images/merchant2_avatar.jpg',
                                merchant2[0].toString(),
                                merchant2[1].toString(),
                                merchant2[2].toString(),
                                merchant2[3].toString(),
                                isSeller,
                                false,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 16,
                                ),
                              ),
                              MerchantList(
                                'assets/images/merchant3_avatar.jpg',
                                merchant3[0].toString(),
                                merchant3[1].toString(),
                                merchant3[2].toString(),
                                merchant3[3].toString(),
                                isSeller,
                                false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MerchantList extends StatelessWidget {
  final String avatar;
  final String title;
  final String subtitle;
  final String score;
  final String distance;
  final bool isSeller;
  final bool isOwnMerchant;

  MerchantList(
    this.avatar,
    this.title,
    this.subtitle,
    this.score,
    this.distance,
    this.isSeller,
    this.isOwnMerchant,
  );

  @override
  Widget build(BuildContext context) {
    merchantClosed() {
      showToast(
        'Mohon maaf, untuk saat ini toko ini sedang tutup dan tidak dapat diakses.',
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        context: context,
      );
    }

    return MaterialButton(
      onPressed: () => isOwnMerchant
          ? (isMerchantOpen
              ? (isSeller
                  ? Navigator.pushNamed(
                      context,
                      'MerchantProductsSeller',
                    )
                  : Navigator.pushNamed(
                      context,
                      'MerchantProductsBuyer',
                    ))
              : merchantClosed())
          : merchantClosed(),
      child: Opacity(
        opacity: isOwnMerchant ? (isMerchantOpen ? 1.0 : 0.5) : 0.5,
        child: Container(
          height: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                colorGreen,
                colorBlue,
              ],
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 128,
                padding: EdgeInsets.all(16),
                width: 128,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    avatar,
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 4,
                      ),
                    ),
                    Text(
                      subtitle,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 4,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 4,
                          ),
                        ),
                        Text(
                          score,
                          style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 4,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 4,
                          ),
                        ),
                        Text(
                          distance,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
