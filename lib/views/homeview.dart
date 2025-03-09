import 'package:flutter/material.dart';
import 'package:gitnews3/widgets/categorieslistview.dart';

import 'package:gitnews3/widgets/newslistviewbuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
              NewsListViewBuilder(),
            ],
          ),
        ));
  }
}
