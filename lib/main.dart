import 'package:flutter/material.dart';
import 'package:mahalle_manavim_ui/otherpages/homepage.dart';
import 'package:mahalle_manavim_ui/otherpages/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahalle Manavim',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mahalle Manavim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          color: Color(0xFFD85224),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Mahalle Manavim",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Image.asset("assets/images/meyvesepeti.png"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Kullanici Adi",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, left: 10, right: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Parola",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        color: Colors.white30,
                        child: Text(
                          "Giris Yap",
                          style: TextStyle(fontSize: 18),
                        ),
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePageWidget()));
                        },
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Uye degil misiniz? Hemen kayit olun!",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF0C6A01),
                            fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
