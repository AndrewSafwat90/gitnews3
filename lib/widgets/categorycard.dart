import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/business.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Business',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
