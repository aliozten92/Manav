import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Profile(),
  );
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PROFİL'),
        backgroundColor: Color(0xFFD85224),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.black54,
                backgroundImage: AssetImage('images/nano.jpg'),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Ali ÖZTEN',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                ),
              ),
              Text(
                'Sizleri  Aramızda Görmekten Çok Mutluyuz',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 200,
                height: 50,
                child: Divider(
                  height: 35,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black45,

                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                padding: EdgeInsets.all(2),
                color: Colors.black26,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'aliozten92@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                padding: EdgeInsets.all(2),
                color: Colors.black26,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '444 9 444',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                padding: EdgeInsets.all(2),
                child: SizedBox(
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
