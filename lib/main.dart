import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      // '/third': (context) => const ThirdRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

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
                          fontSize: 30,
                          color: Colors.black)))),
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg_image.jpg'),
                      opacity: 0.5,
                      fit: BoxFit.cover)),
              child: SafeArea(
                  child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(40, 80, 40, 30),
                      child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          // controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                            // errorText: 'Wrong User Name',
                          ))),
                  Container(
                      // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                      child: TextField(
                          obscureText: true,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          // controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            // errorText: 'Wrong Password',
                          ))),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Center(
                          widthFactor: 1,
                          heightFactor: 1,
                          child: Text(
                            'Sign In',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )))
                ],
              )))),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

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
                        fontSize: 30,
                        color: Colors.black)))),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
              child: Text(
                'Scan this QR code at the scanner to start the admission process',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ),
            Container(child: Text('Button')),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 60),
              child: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/330px-QR_code_for_mobile_English_Wikipedia.svg.png'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
