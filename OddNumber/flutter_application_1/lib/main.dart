import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Odd Number';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
           SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
         SizedBox(
           height: 20,
          ),
          Wrap(
            children: [
              // ElevatedButton(
              //   child: Text("Addition"),
              //   onPressed: () {
              //     setState(() {
              //       int sum = int.parse(num1controller.text) +
              //           int.parse(num2controller.text);
              //       result = sum.toString();
              //     });
              //   },
              // ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              // ElevatedButton(
              //   child: Text("Calculate"),
              //   onPressed: () {
              //     setState(() {
              //       double invironment = int.parse(num1controller.text) * 3.14 * 2;
              //       result = invironment.toString();
              //     });
              //   },
              // ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              // ElevatedButton(
              //   child: Text("Diameter"),
              //   onPressed: () {
              //     setState(() {
              //       double diamter = int.parse(num1controller.text) * 2;
              //       result = diamter.toString();
              //     });
              //   },
              // ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Calculate"),
                onPressed: () {
                  setState(() {
                    var product = [5];
                    // var i = num1controller;
                    // ignore: prefer_const_constructors
                    int j = int.parse(num2controller.text);
                    int i = int.parse(num1controller.text);
                    for (; i < j; i++)
                    {
                      if (i % 2 == 1)
                      {
                        product[i] *= i;
                      }
                    }
                    //double Calculate = int.parse(num1controller.text) * int.parse(num1controller.text) * 3.14;
                    for (i; i < j; i++)
                    {
                      result = product[i].toString();    
                    }
                    
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('Result : $result'),
        ],
      ),
    );
  }
}