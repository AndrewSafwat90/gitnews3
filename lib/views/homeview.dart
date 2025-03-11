import 'package:flutter/material.dart';
import 'package:gitnews3/models/articlemodel.dart';
import 'package:gitnews3/services/newsService.dart';
import 'package:gitnews3/widgets/categorieslistview.dart';

import 'package:gitnews3/widgets/newslistviewbuilder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String category = 'general'; // Track current category
  int refreshTrigger = 0;

  void _refreshPage() {
    setState(() {
      refreshTrigger++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: _refreshPage, icon: Icon(Icons.refresh))
          ],
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'News ',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: Categorieslistview()),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 30,
              )),
              NewsListViewBuilder(
                category: 'general',
                key: ValueKey(refreshTrigger),
              ),
            ],
          ),
        ));
  }
}
