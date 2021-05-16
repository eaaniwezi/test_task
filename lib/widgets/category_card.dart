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
    return Container(
      margin: const EdgeInsets.only(left: 25.0, right: 3),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        border: Border(
          left: BorderSide(color: Colors.pink[400], width: 1),
          right: BorderSide(color: Colors.pink[400], width: 1),
          top: BorderSide(color: Colors.pink[400], width: 1),
          bottom: BorderSide(color: Colors.pink[400], width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              height: 65.0,
              width: 65.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              categoryName,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numberOfItems.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  categoryType,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
