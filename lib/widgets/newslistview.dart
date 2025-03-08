import 'package:flutter/material.dart';
import 'package:gitnews3/models/articlemodel.dart';
import 'package:gitnews3/services/newsService.dart';
import 'package:gitnews3/widgets/newstile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoading = true;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService().getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
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
