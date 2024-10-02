import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF5588A3),
          body: SafeArea(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/efe.jpg'),
              ),
              Text('Efe Keskin',
                  style: TextStyle(
                      color: Color(0xFFE8E8E8),
                      fontSize: 30,
                      fontFamily: 'Pacifico')),
              Text('Research Engineer',
                  style: TextStyle(
                      color: Color(0xFFE8E8E8),
                      fontSize: 20,
                      fontFamily: 'Roboto')),
              SizedBox(
                height: 20,width: 250,child: Divider(color: Colors.blue.shade100,),
              ),
              Card(
                color: Color(0xFFE8E8E8),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Color(0xFF145374),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Efekeskinkin@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          color: Color(0xFF00334E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                color: Color(0xFFE8E8E8),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Color(0xFF145374),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+90 552 206 xxxx',
                        style: TextStyle(fontSize: 15, fontFamily: 'Roboto'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
