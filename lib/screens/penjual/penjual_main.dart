import 'package:flutter/material.dart';
import 'package:proxim/screens/home/home.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

bool toggleToko = true;

class PenjualScreen extends StatefulWidget {
  static const routeName = 'penjual_main';
  @override
  _PenjualScreenState createState() => _PenjualScreenState();
}

//Biar bisa ganti gambar buka/tutup toko, ngemanfaatin bool toggleToko
String _setImage() {
  if (toggleToko == true) {
    return 'assets/img/tutup_toko.png';
  } else if (toggleToko == false) {
    return 'assets/img/buka_toko.png';
  }
}

class _PenjualScreenState extends State<PenjualScreen> {
  @override
  Widget build(BuildContext context) {
    //Buat balik ke halaman sebelumnya, pake back button default android
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Scaffold(
        //Untuk sliding panel yang di bawah peta
        body: SlidingUpPanel(
          //Biar corner atasnya agak bulet
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          //Untuk ngatur isi dari panelnya sendiri
          panel: Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  //Bikin bar yang ada di paling atas panel
                  Container(
                    height: 5.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "UMKM di Sekitarmu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Roboto Condensed",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  //Tiga toko yang muncul
                  InkWell(
                    child: Container(
                      width: 304,
                      height: 121.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/toko1.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    //Ini isiin apa screen barunya nanti
                    //onTap () {}
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 304,
                    height: 121.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/toko2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 304,
                    height: 121.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/toko3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //Ini untuk bagian peta sama back button
          body: Stack(
            children: <Widget>[
              //Supaya petanya bisa discroll kiri kanan sama zoom
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
              //Lokasi dari back button
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
              //Ini yang atur toko
              Positioned(
                top: MediaQuery.of(context).size.height * 0.8,
                child: Container(
                  width: 100.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/atur_toko.png'),
                    ),
                  ),
                ),
              ),
              //Ini yang buka/tutup toko
              Positioned(
                top: MediaQuery.of(context).size.height * 0.8,
                left: MediaQuery.of(context).size.width * 0.72,
                child: InkWell(
                  child: Container(
                    width: 100.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_setImage()),
                      ),
                    ),
                  ),
                  //Untuk ngubah value toggleToko-nya, jadi NOT dari value awal
                  onTap: () {
                    setState(() => toggleToko = !toggleToko);
                    print(toggleToko);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
