import 'package:flutter/material.dart';
import '../models/news_model.dart';

class DetailPage extends StatelessWidget {
  final News news;

  const DetailPage({
    super.key,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Berita"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              news.headline,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              news.abstract,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              news.body,
              style: const TextStyle(fontSize: 16),
            ),

          ],
        ),
      ),
    );
  }
}