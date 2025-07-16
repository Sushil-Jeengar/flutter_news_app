import 'package:news_app/models/top_news.dart';
import 'package:news_app/news_repository/new_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<TopNewsModels> fetchTopNewsApi() async {
    final response = await _rep.fetchTopNewsApi();
    return response;
  }

  Future<TopNewsModels> fetchNewsByCategory(String category) async {
    return await _rep.fetchNewsByCategory(category);
  }

}