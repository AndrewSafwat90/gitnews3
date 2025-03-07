import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gitnews3/services/newsService.dart';
import 'package:gitnews3/views/homeview.dart';

void main() {
  NewsService().getHttp();
  runApp(const gitnews3());
}

class gitnews3 extends StatelessWidget {
  const gitnews3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
