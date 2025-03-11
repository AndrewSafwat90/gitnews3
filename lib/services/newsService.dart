import 'package:dio/dio.dart';
import 'package:gitnews3/models/articlemodel.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articlemodel = ArticleModel.fromJson(article);
        articlesList.add(articlemodel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
