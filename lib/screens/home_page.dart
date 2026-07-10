import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<List<News>> futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = ApiService().getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<News>>(
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

          List<News> news = snapshot.data!.take(5).toList();

          return ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {

              return Card(
                margin: const EdgeInsets.all(10),

                child: ListTile(

                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      "${news[index].id}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),

                  title: Text(
                    news[index].headline,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  subtitle: Text(
                    news[index].abstract,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                ),
              );
            },
          );
        },
      ),
    );
  }
}