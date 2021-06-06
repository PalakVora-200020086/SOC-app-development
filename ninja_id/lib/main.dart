import 'package:flutter/material.dart';
import 'form_screen.dart';

void main() {
  runApp(MaterialApp(

      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/form_screen': (context) => FormScreen(),
      }
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Home"),
      centerTitle: true,
    ),
    floatingActionButton: FloatingActionButton.extended(
    onPressed :(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> FormScreen()));
      },
      icon: Icon(Icons.add),
      label: Text("Add a new customer") ,

    )

    );
  }
}
