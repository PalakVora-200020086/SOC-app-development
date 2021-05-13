import 'package:flutter/material.dart';
import 'package:news_app/Pages/home.dart';
import 'package:news_app/Pages/category_news.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white,
    ),

    initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/category_news':(context) => CategoryNews(),

    },
  )
  );
}

