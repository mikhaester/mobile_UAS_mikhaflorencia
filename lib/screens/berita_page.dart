import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../services/api_service.dart';
import 'detail_page.dart';

class BeritaPage extends StatefulWidget {
  const BeritaPage({super.key});

  @override
  State<BeritaPage> createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  late Future<List<News>> futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = ApiService().getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News>>(
      future: futureNews,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        List<News> news = snapshot.data!;

        return ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(news[index].id.toString()),
                ),

                title: Text(news[index].headline),

                subtitle: Text(
                  news[index].abstract,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                trailing: const Icon(Icons.arrow_forward_ios),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(news: news[index]),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}