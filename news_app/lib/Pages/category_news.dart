import 'package:flutter/material.dart';
import 'package:news_app/news.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/news.dart';
import 'package:news_app/article.dart';
import 'package:news_app/newstile.dart';

class CategoryNews extends StatefulWidget {

  final String category;

  CategoryNews({this.category});

  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List <Article> newslist = [];


  @override
  void initState() {
    getNews();
    // TODO: implement initState
    super.initState();
    getNews();
  }

  void getNews() async {
    Data news = Data();
    await news.getNews(widget.category);
    newslist = news.articles;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("DAILY NEWS",
                style:
                TextStyle(color: Colors.teal, fontWeight: FontWeight.w600),
              ),

          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.share,)),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:
      SingleChildScrollView(
        child: Container(
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: ListView.builder(
                itemCount: newslist.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return NewsTile(
                    imgUrl: newslist[index].urlToImage ?? "",
                    title: newslist[index].title ?? "",
                    desc: newslist[index].description ?? "",
                    content: newslist[index].content ?? "",
                    posturl: newslist[index].articleUrl ?? "",
                  );
                }),
          ),
        ),
      ),
    );

  }
}