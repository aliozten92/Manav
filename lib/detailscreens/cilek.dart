import 'package:flutter/material.dart';

class Cilek extends StatefulWidget {
  Cilek({Key key}) : super(key: key);

  @override
  _CilekState createState() => _CilekState();
}

class _CilekState extends State<Cilek> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Çilek'),
        backgroundColor: Color(0xFFD85224),
      ),
      key: scaffoldKey,
      body: SafeArea(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Color(0xFFF5F5F5),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              new Container(
                child: new Image.asset(
                  'assets/images/cilek.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 10, 25),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'Çileklerimiz Birinci Kalitedir, Dilerseniz Manavımızı Arayarak Sipariş Vereceğiniz Elmaları Tezgahta Görebilirsiniz.',
                        style: TextStyle(
                          fontFamily: 'Lora',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.white30,
                        child: Text(
                          "Sepete Ekle",
                          style: TextStyle(fontSize: 18),
                        ),
                        textColor: Colors.black,
                        onPressed: () {
                          print("SEPETE EKLENDİ");
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
