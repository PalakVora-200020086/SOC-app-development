import 'package:flutter/material.dart';
import 'package:news_app/Pages/category_news.dart';
import 'package:news_app/news.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<News> news = [
    News(name:'Sports', pic:'sports.png'),
    News(name:'Business', pic:'business.png'),
    News(name:'Health', pic:'health.png'),
    News(name:'Entertainment', pic:'entertainment.png'),
    News(name:'General', pic:'general.png'),
    News(name:'Science', pic:'science.png'),
    News(name:'Technology', pic:'technology.png'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(' DAILY NEWS',style: TextStyle(
            color: Colors.cyan,
            fontSize: 25
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
                        category: '${news[index].name.toLowerCase()}' ,
                    )
                    ));
                  },
                  title: Text('${news[index].name}',
                      style:TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20
                      )),
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
