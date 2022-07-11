import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar:
                AppBar(title: const Text('Flutter Sort List in Ascending Order')),
            body: App()));
  }
}

class App extends StatefulWidget {
  AppState createState() => AppState();
}

class AppState extends State {
  @override
  void initState() {
    // Sorting List in Ascending Order.
    numbers1.sort();
    super.initState();
    numbers2.reversed;
    super.initState();
  }
  

  final List<double> numbers1 = <double>[
   1,
   1.3,
   8,
   7,
   8.3,
   7.7,
   5.3,
   2
  ];
    final List<double> numbers2 = <double>[
   8.3,
   8,
   7.7,
   7,
   5.3,
   2,
   1.3,
   1
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: numbers1.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            margin: const EdgeInsets.all(2),
            color: Color.fromARGB(255, 50, 127, 228),
            child: Center(
                child: Text(
              '${numbers1[index]} | ${numbers2[index]}',
              style: const TextStyle(fontSize: 24, color: Colors.white),
            )),
          );
        });
  }
}