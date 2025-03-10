import 'package:flutter/material.dart';
import 'package:gitnews3/models/articlemodel.dart';
import 'package:gitnews3/services/newsService.dart';
import 'package:gitnews3/widgets/newslistview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category: 'general');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
              child: Center(
            child: Text('No data 😥'),
          ));
        } else {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    // return isLoading
    //     ? SliverFillRemaining(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : SliverFillRemaining(
    //             child: Center(
    //             child: Text('No data 😥'),
    //           ));
  }
}
