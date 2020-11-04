import 'package:flutter/material.dart';
class MyApp extends StatelessWidget{
  String name;
  int age;
  MyApp({this.name, this.age});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Hello $name',
      home: Scaffold(
        body: Center(child: Text('Hello $name - age: $age ',
            style: TextStyle(fontSize: 30),
            textDirection: TextDirection.ltr
        )),
      ),
    );
  }
}