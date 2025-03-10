import 'package:flutter/material.dart';
import 'package:gitnews3/models/categorymodel.dart';
import 'package:gitnews3/views/categoryview.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categoryModel.categoryName,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 110,
        width: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(categoryModel.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
