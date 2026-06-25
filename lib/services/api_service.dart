import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/news_model.dart';

class ApiService {
  static Future<List<NewsModel>> getData(
    String category,
  ) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=4a227bc8fa5540f389918c85be70cd8d";

    final data = await http.get(
      Uri.parse(url),
    );

    final response = jsonDecode(data.body);

    List<dynamic> newsData =
        response["articles"];

    return newsData
        .map(
          (oneNews) =>
              NewsModel.fromJson(oneNews),
        )
        .toList();
  }
}