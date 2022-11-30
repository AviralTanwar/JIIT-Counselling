import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

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
              child: Text('Welcome to JIIT (Page 5)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black)))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(10, 20, 100, 0),
                child: Center(
                    child: Text('Demand draft Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black)))),
            Container(
                padding: EdgeInsets.fromLTRB(1, 2, 10, 15),
                child: Center(
                    child: Text(
                        '(Not applicable in case Form is purchased on payment in cash or by post from Institute Counter)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black)))),
            Container(
              child: Row(
                children: [
                  new Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 1),
                      child: TextField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
// controller: nameController,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 6,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            labelText: "DD Number",
                          )),
                    ),
                  ),
                  new Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 40, 20),
                      child: TextFormField(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(6),
                            CardMonthInputFormatter(),
                          ],
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white70,
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: "Date of Birth"
                              // errorText: 'Wrong Password',
                              )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(40, 1, 40, 1),
                child: Text(
                  "Amount= Rs1200/-",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
            Container(
                child: Column(children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                  child: TextField(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
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
                      labelText: 'Bank',
                      // errorText: 'Wrong User Name',
                    ),
                  )),
              Container(
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
                          labelText: "City/Distt. of School"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
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
                          labelText: "State of the School"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
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
                          labelText: "Board"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 4,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Year of Passing",
                        // errorText: 'Wrong Password',
                      ))),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "10+2 Roll Number",
                        // errorText: 'Wrong Password',
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 210, 15),
                  child: Center(
                      child: Text('Score in 10+2 Exam',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)))),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text(
                  "Mathematics",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Max Marks"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text(
                  "Physics",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Max Marks"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(24, 15, 24, 15),
                child: subject3(),
              ),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Max Marks"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Text(
                  "Total",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Max Marks"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 3,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                labelText: "Marks Obtained"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SixthRoute');
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
    ;
  }
}

class subject3 extends StatefulWidget {
  const subject3({Key? key}) : super(key: key);

  @override
  State<subject3> createState() => _subject3State();
}

class _subject3State extends State<subject3> {
  String dropdownvalue = 'Subject3';
  // List of items in our dropdown menu
  var items = [
    'Subject3',
    'Chemistry',
    'Computer Science',
    'Informatics Practices',
    'Information Technology',
    'Biology',
    'Biotechnology',
    'Technical Vocational Subjects',
    'Agriculture',
    'Engineering Graphics and Business Studies',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // Initial Value
      value: dropdownvalue,
      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 12,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
    );
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
