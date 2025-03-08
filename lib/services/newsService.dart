import 'package:dio/dio.dart';
import 'package:gitnews3/models/articlemodel.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articlemodel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        description: article['description'],
      );
      articlesList.add(articlemodel);
    }
    return articlesList;
  }
}
