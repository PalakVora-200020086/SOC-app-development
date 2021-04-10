import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
      centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
      child: Text('click',
      style: TextStyle),
      )
    ),
  ));
}

