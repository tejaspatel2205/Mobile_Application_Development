import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Mini Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String addition="";
  String subtraction="";
  String multiplication="";
  String division="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Mini Calculator"), backgroundColor: Colors.red,),
        body: Column(
          children: [
            Text("Enter 2 Numbers"),
            TextField(controller: num1),
            TextField(controller: num2),
            ElevatedButton(onPressed: () {
              add();
            }, child: Text("+")),
            Text("$addition"),
            ElevatedButton(onPressed: (){
              sub();
            }, child: Text("-")),
            Text("$subtraction"),
            ElevatedButton(onPressed: (){
              mul();
            }, child: Text("*")),
            Text("$multiplication"),
            ElevatedButton(onPressed: (){
              div();
            }, child: Text("/")),
            Text("$division"),
          ],
        ),
      )
    );
  }

void add(){
  setState(() {
    var a = int.parse(num1.text);
    var b =  int.parse(num2.text);
    var c = a+b;
    addition="$c";
  });
}

void sub(){
  setState(() {
    var a = int.parse(num1.text);
    var b =  int.parse(num2.text);
    var c = a-b;
    subtraction="$c";
  });
}

void mul(){
  setState(() {
    var a = int.parse(num1.text);
    var b =  int.parse(num2.text);
    var c = a*b;
    multiplication="$c";
  });
}

void div(){
  setState(() {
    var a = int.parse(num1.text);
    var b =  int.parse(num2.text);
    if(b!=0){
      setState(() {
        var c = b/a;
        division="$c";
      });
    }
    else{
      division="Division By Zero is Not Possible";
    }
  });
}
}