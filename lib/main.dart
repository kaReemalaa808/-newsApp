import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const Home(),
    );
  }
}
