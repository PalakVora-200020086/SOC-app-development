import 'package:flutter/material.dart';
import 'package:news_app/Pages/category_news.dart';
import 'package:news_app/news.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<News> news = [
    News(name:'sports', pic:'sports.png'),
    News(name:'business', pic:'business.png'),
    News(name:'health', pic:'health.png'),
    News(name:'entertainment', pic:'entertainment.png'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(' DAILY NEWS',style: TextStyle(
            color: Colors.cyan,
            fontSize: 20
          ),),
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white60
      ,
      body:ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CategoryNews(
                        category: news[index].name ,
                    )
                    ));
                  },
                  title: Text(news[index].name),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${news[index].pic}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
