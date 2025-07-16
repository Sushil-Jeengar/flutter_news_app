import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/top_news.dart';
class NewsRepository {


  Future<TopNewsModels> fetchTopNewsApi()async{

    String url = 'https://newsapi.org/v2/everything?q=india&apiKey=86b58b873e114bb08b661e2873b249f2' ;

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return TopNewsModels.fromJson(body);

    }
    throw Exception('ERROR');
  }

  Future<TopNewsModels> fetchNewsByCategory(String category) async {
    String url = 'https://newsapi.org/v2/everything?q=' + Uri.encodeComponent(category) + '&apiKey=86b58b873e114bb08b661e2873b249f2';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return TopNewsModels.fromJson(body);
    }
    throw Exception('ERROR');
  }
}