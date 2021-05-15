import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;
  final String categoryType;

  CategoryCard(
      {this.categoryName,
      this.imagePath,
      this.numberOfItems,
      this.categoryType});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagePath),
            height: 65.0,
            width: 65.0,
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            categoryName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Row(
            children: [
              Text(
                numberOfItems.toString(),
              ),
              Text(
                categoryType,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
