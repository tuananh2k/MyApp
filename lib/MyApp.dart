import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  String name;
  int age;
  MyApp({this.name, this.age});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _email = '';
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my first code',
      home: Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center, //hien thi o trung tam man hinh
           children: <Widget> [
             Container(
               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), //horizontal: can vi tri left + right, vertical: can vi tri top + bottom
               child: TextField(
                 controller: emailEditingController,
                 onChanged: (text){
                   this.setState(() {
                     _email = text;
                   });
                 },
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: const BorderRadius.all( // bo tron goc o textfield
                         const Radius.circular(20)
                       )
                     ),
                     labelText: 'Enter your name:'
                 ),
               ),
             ),
             Text('See result:',
             style: TextStyle(fontSize: 30, color: Colors.blue),
             ),
             Text('Hello $_email',
             style: TextStyle(fontSize: 30, color: Colors.red),
             )
           ],
         ),
        ),
      )
    );
  }

}