import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceeApp());
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key);

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void gesturedDetected() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.redAccent,
          ),
          body: Center(
            child: Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    gesturedDetected();
                  },
                  child: (Image.asset('images/dice$leftDiceNumber.png')),
                ),
              )),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                        onTap: () {
                          gesturedDetected();
                        },
                        child: Image.asset('images/dice$rightDiceNumber.png'),
                      )))
            ]),
          ),
        ));
  }
}
