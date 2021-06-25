import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

//import 'package:easy_theme/easy_theme.dart';

void main() {
  runApp(
    Pcall(),
  );
}

class Pcall extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Pcall> {
  TextEditingController _numberCtrl = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "0850 564 41 42";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD85224),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Mahalle Manavım',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lora',
            color: Color(0xFFFDFBFB),
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 10,
      ),

      body: new Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _numberCtrl,
              decoration: InputDecoration(labelText: "Phone Number"),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30,shadowColor: Colors.green),
            child: Text(
              "Manavı Ara",
              style: TextStyle(
                fontFamily: 'Lora',
                color: Color(0xFF016601),
                fontStyle: FontStyle.italic,
              ),
            ),
            onPressed: () async {
              FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
            },
          ),
        ],

      ),
    );
  }
}
