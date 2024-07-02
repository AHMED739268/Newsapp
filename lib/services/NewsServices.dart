import 'package:dio/dio.dart';

import '../model/articlemodel.dart';

class Newsservices {
  final dio = Dio();

  Future<List<articleModel>> get_generalnews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=1f94f21a9be04d26a7663f43e737e5e4&country=us&category=general');
    Map<String, dynamic> jsondata = response.data;
    List<articleModel> allarticles = [];
    List<dynamic> articles = jsondata['articles'];
    for (var article in articles) {
      articleModel articleobject = articleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description']);
      allarticles.add(articleobject);
    }

    return allarticles;
  }
}
