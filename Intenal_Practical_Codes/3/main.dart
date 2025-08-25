import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Vegetables();
  }
}

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Vegetables Records with Photos"), backgroundColor: Colors.teal,),
        body: ListView(
          children: [
            ListTile(
              title: Text("Potato"),
              leading: Image.asset('assets/images/potato.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("BeetRoot"),
              leading: Image.asset('assets/images/BeetRoot.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Brinjal"),
              leading: Image.asset('assets/images/brinjal.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Cabbage"),
              leading: Image.asset('assets/images/cabbage.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Carrot"),
              leading: Image.asset('assets/images/carrot.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Cauliflower"),
              leading: Image.asset('assets/images/flower.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Cucumber"),
              leading: Image.asset('assets/images/cucumber.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Onion"),
              leading: Image.asset('assets/images/onion.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Spinach"),
              leading: Image.asset('assets/images/spinach.jpg'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(
              title: Text("Tomato"),
              leading: Image.asset('assets/images/tomato.jpgs'),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ],
        ),
      ),
    );
  }
}