import 'package:flutter/material.dart';
import 'package:news_app/article.dart';
import 'package:news_app/newstile.dart';


class Articles extends StatefulWidget {
 @override
  _ArticlesState createState() => _ArticlesState();
 final String category;

 Articles({this.category});

}


class _ArticlesState extends State<Articles> {
 List <Article> newslist = [];
  getNews() async{

    Data news = Data();
    await news.getNews(widget.category);
    newslist = news.articles;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }
  @override
  Widget build(BuildContext context) {
    return
       Container(
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
                postUrl: newslist[index].articleUrl ?? "",
              );
            }),

      );

  }
}
