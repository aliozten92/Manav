import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text('HAKKINDA '),
          backgroundColor: Color(0xFFD85224),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Bu uygulama Dr.Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen '
                '3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301064 numaralı Ali ÖZTEN tarafından '
                '  25/Haziran/2021 cuma  günü yapılmıştır.',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        ) //),
        );
  }
}
