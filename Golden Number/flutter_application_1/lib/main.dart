import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'this app calculate golden number';

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
              labelText: 'Input',
              hintText: 'Enter  Number',
            ),
          ),
           SizedBox(
            height: 20,
          ),
          //TextField(
          //   keyboardType: TextInputType.number,
          //   controller: num2controller,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Second Number',
          //     hintText: 'Enter Second Number',
          //   ),
          // ),
         // SizedBox(
           // height: 20,
          //),
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
              // SizedBox(
              //   height: 20,
              //   width: 20,
              // ),
              // ElevatedButton(
              //   child: Text("Invironment"),
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
              ElevatedButton(
                child: Text("multiplication"),
                onPressed: () {
                  setState(() {
                    double multiplication = int.parse(num1controller.text) * 1.618;
                    result = multiplication.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("division"),
                onPressed: () {
                  setState(() {
                    double division= int.parse(num1controller.text) / 1.618;
                    result = division.toString();
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