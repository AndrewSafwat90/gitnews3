import 'package:flutter/material.dart';
import 'package:gitnews3/models/categorymodel.dart';
import 'package:gitnews3/widgets/categorycard.dart';

class Categorieslistview extends StatelessWidget {
  Categorieslistview({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(categoryName: 'Business', image: 'assets/business.png'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/entertainment.png'),
    CategoryModel(categoryName: 'General', image: 'assets/general.png'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.png'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.png'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.png'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
