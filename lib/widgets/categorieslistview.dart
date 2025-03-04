import 'package:flutter/material.dart';
import 'package:gitnews3/widgets/categorycard.dart';

class Categorieslistview extends StatelessWidget {
  const Categorieslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CategoryCard();
        },
      ),
    );
  }
}
