import 'package:flutter/material.dart';
import 'package:gitnews3/widgets/newslistviewbuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: CustomScrollView(slivers: [
        NewsListViewBuilder(),
      ]),
    );
  }
}
