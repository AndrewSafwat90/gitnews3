import 'package:dio/dio.dart';

class NewsService {
  final dio = Dio();

  void getHttp() async {
    final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6459ba74328d41cdaa8acfdacd45826c');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    print(articles);
  }
}
