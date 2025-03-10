import 'package:flutter/material.dart';
import 'package:gitnews3/widgets/newslistviewbuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          NewsListViewBuilder(
            category: category,
          ),
        ]),
      ),
    );
  }
}
