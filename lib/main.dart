import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Image.asset('images/jiit_logo.png'),
            title: Center(
                child: Text('Welcome to JIIT',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black)))),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Text(
                'Scan this QR code at the scanner to start the admission process',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ),
            Container(child: Text('Button'))
          ],
        )),
      ),
    );
  }
}
