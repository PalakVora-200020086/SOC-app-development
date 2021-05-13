import 'package:newsapi/newsapi.dart';

class Data {
  List <Article> articles = [];

  Future<void> getNews(String category) async {
    var newsApi = NewsApi(
      debugLog: true,
      apiKey: '352c85dccbef4961af0d1627bcfc7057',
    );
    ArticleResponse topHeadlines = await newsApi.topHeadlines(
      country: 'in',
      category: category,
      //sources: sources,
      //    q: q,
      language: 'en',
      //    pageSize: pageSize,
      //    page: page,
    );
    //    print(topHeadlines.articles[1].description);
   int index = 0;
    if ('${topHeadlines.articles[index].urlToImage}' != null &&
        '${topHeadlines.articles[index].description}' != null) {
      Article article = Article(
        title: '${topHeadlines.articles[index].title}',
        author: '${topHeadlines.articles[index].author}',
        description: '${topHeadlines.articles[index].description}',
        urlToImage: '${topHeadlines.articles[index].urlToImage}',
        content: '${topHeadlines.articles[index].content}',
        source : null,
        publishedAt: null,
        url: '${topHeadlines.articles[index].url}',
      );
      articles.add(article);
    }


     //print(topHeadlines.articles[index].title);

  }
}
