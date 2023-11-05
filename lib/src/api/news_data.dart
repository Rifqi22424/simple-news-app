import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

class NewsData {
  Future<List<News>> fetchData() async {
    final url = Uri.parse('https://fakenews.squirro.com/news/sport');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<News> newsList = [];

      for (var item in data['news']) {
        String title = item['headline'];
        String body = item['body'];

        body = body.replaceAll('<p>', '').replaceAll('</p>', '');
        newsList.add(News(title, body));
      }

      return newsList;
    } else {
      print('Gagal Mengambil Data. Status Code: ${response.statusCode}');
      return [];
    }
  }
}
