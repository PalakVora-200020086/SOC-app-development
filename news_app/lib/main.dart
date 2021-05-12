import 'package:flutter/material.dart';
import 'package:news_app/Pages/home.dart';
import 'package:news_app/Pages/category_news.dart';
import 'package:news_app/article_view.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/category_news':(context) => CategoryNews(),

    },
  ));
}

