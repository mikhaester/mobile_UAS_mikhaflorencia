import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class ApiService {
  static const String apiUrl =
      "https://fakenews.squirro.com/news/sport";

  Future<List<News>> getNews() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        List newsList = data["news"];

        return newsList.map((e) => News.fromJson(e)).toList();
      } else {
        return dummyNews;
      }
    } catch (e) {
      return dummyNews;
    }
  }
}