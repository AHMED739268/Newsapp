import 'package:dio/dio.dart';
import '../model/articlemodel.dart';

class NewsServices {
  final dio = Dio();

  Future<List<articleModel>> getGeneralNews({ required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=1f94f21a9be04d26a7663f43e737e5e4&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<articleModel> allArticles = [];
      List<dynamic> articles = jsonData['articles'];
      for (var article in articles) {
        //by using named constructor
        articleModel articleObject = articleModel.fromjson(article);

        // articleModel articleObject = articleModel(
        //   image: article['urlToImage'] ?? '',
        //   title: article['title'] ?? '',
        //   subtitle: article['description'] ?? '',
        // );
        allArticles.add(articleObject);
      }
      return allArticles;
    } catch (e) {
      print('An error occurred: $e');
      return [];
    }
  }
}
