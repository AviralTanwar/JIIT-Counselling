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
                      labelText: 'Name of the candidate',
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
                          labelText: "Father's Name"
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
                          labelText: "Mother's Name"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
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
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Date of Birth (dd/mm/yy)"
                        // errorText: 'Wrong Password',
                        )),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
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
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      maxLength: 12,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Adhaar Number of the Candidate",
                        // errorText: 'Wrong Password',
                      ))),
              Container(
                  child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(50, 15, 40, 15),
                    child: gender(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 15, 50, 15),
                    child: category(),
                  )
                ],
              )),
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
                          labelText: "Religion"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                  // padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(50, 15, 10, 15),
                      child: Text(
                        "Person with disability",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                  Container(child: boxes()),
                ],
              )),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 220, 15),
                  child: Center(
                      child: Text('Permanent Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)))),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 1),
                  child: TextField(
                      maxLines: 5,
                      minLines: 1,
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
                          labelText: "Address"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 0, 1),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
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
                                labelText: "District"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 10, 40, 1),
                          child: Text('State Code'),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
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
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Pincode",
                        // errorText: 'Wrong Password',
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Center(
                      child: Text(
                          'Current Correspondance Address (leave if same)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)))),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 1),
                  child: TextField(
                      maxLines: 5,
                      minLines: 1,
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
                          labelText: "Address"
                          // errorText: 'Wrong Password',
                          ))),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 0, 1),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
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
                                labelText: "District"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60, 10, 40, 1),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
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
                                labelText: "State Code"
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
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
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Pincode",
                        // errorText: 'Wrong Password',
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 271, 15),
                  child: Center(
                      child: Text('Contact Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)))),
              Container(
                child: Row(
                  children: [
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 0, 1),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 10,
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
                              labelText: "Mobile Number",
                            )),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 40, 1),
                        child: TextField(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
// controller: nameController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 11,
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
                                labelText: "LandLine No."
// errorText: 'Wrong Password',
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 15),
                  child: TextField(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      // controller: nameController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelText: "Email-ID",
                        // errorText: 'Wrong Password',
                      ))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/FourthRoute');
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

class gender extends StatefulWidget {
  const gender({Key? key}) : super(key: key);

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  String dropdownvalue = 'Gender ';
  // List of items in our dropdown menu
  var items = [
    'Gender ',
    'Male',
    'Female',
    'Trans Gender',
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

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  String dropdownvalue = 'Category';
  // List of items in our dropdown menu
  var items = [
    'Category',
    'General',
    'SC',
    'ST',
    'OBC',
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

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class boxes extends StatefulWidget {
  const boxes({Key? key}) : super(key: key);

  @override
  State<boxes> createState() => _boxesState();
}

class _boxesState extends State<boxes> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 1,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = 1;
              });
            }),
        SizedBox(width: 1.0),
        Text(
          "Yes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Radio(
            value: 2,
            groupValue: _value,
            onChanged: (value) {
              setState(() {
                _value = 2;
              });
            }),
        SizedBox(width: 1.0),
        Text(
          "No",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
