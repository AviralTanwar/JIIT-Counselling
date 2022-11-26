import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg_image.jpg'),
                  opacity: 0.5,
                  fit: BoxFit.cover)),
          child: Scaffold(
              backgroundColor: Colors.white38,
              appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white60,
                  leading: Image.asset('images/jiit_logo.png'),
                  title: Center(
                      child: Text('Welcome to JIIT',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black)))),
              body: Container(
                  child: SafeArea(
                      child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(40, 80, 40, 30),
                      child: TextField(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.white70),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: 'User Name',
                          // errorText: 'Wrong User Name',
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
                      child: TextField(
                          obscureText: true,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white70),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
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
              ))))),
    );
  }
}
