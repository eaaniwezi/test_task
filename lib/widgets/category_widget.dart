import 'package:flutter/material.dart';
import 'package:test_tasks/models/category_model.dart';
import 'package:test_tasks/widgets/category_card.dart';

class CategoryWidget extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(
            categoryType: _categories[index].categoryType,
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
