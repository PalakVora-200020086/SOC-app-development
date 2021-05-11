import 'dart:convert';
import 'package:http/http.dart' as http;

class Article
{
  String title;
  String author;
  String description;
  String urlToImage;
  String content;
  String articleUrl;

  Article({this.title,this.description,this.author,this.content, this.urlToImage, this.articleUrl});
}

class Data {
  List <Article> articles = [];
  Future<void> getNews(String category) async{

    http.Response response = await http.get(Uri.https('newsapi.org','org/v2/top-headlines?country=in&category=$category&apiKey=352c85dccbef4961af0d1627bcfc7057'));
    print(response.body);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            content: element["content"],
            articleUrl: element["url"],
          );
          articles.add(article);
        }

      });
    }


  }


}