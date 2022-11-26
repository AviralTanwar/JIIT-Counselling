import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homeRoute.dart';
import 'secondRoute.dart';
import 'thirdRoute.dart';
import 'fourthRoute.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/FourthRoute': (context) => const FourthRoute(),
    },
  ));
}
