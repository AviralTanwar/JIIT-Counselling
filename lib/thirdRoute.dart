import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: Image.asset('images/jiit_logo.png'),
          title: const Center(
              child: Text('Welcome to JIIT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black)))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
                child: Center(
                    child: Text('Personal Info',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            color: Colors.black)))),
            Container(
                // child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: Column(children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    // controller: nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      labelText: 'Name of candidate',
                      // errorText: 'Wrong User Name',
                    ),
                  )),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 30, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Father's Name"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Mother's Name"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Date of Birth"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Nationality"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Adhaar Number of Candidate"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Gender"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Category"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: EdgeInsets.fromLTRB(250, 50, 60, 10),
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          labelText: "Religion"
                          // errorText: 'Wrong Password',
                          ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourthRoute');
                  },
                  child: Center(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Text(
                        'Next Page',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ))),
            ])),
            // Divider(height: 1),
          ],
        ),
      ),
    ));
  }
}
