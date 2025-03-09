import 'package:flutter/material.dart';
import 'package:gitnews3/models/articlemodel.dart';
import 'package:gitnews3/widgets/newstile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NewsTile(
            articlemodel: articles[index],
          ),
        );
      },
    ));
  }
}
