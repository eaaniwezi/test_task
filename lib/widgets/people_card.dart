import 'package:flutter/material.dart';

class PeopleCard extends StatelessWidget {
  final String name;
  final int age;
  final double numberOfFollowers;
  final double rating;
  final String imagePath;

  const PeopleCard(
      {this.name,
      this.age,
      this.numberOfFollowers,
      this.rating,
      this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0, right: 3),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[350],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 17,
                  child: Image.asset(
                    'images/image/vector.png',
                    fit: BoxFit.cover,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              ' ${age.toString()} Лет, Алматы',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black45,
                fontSize: 12,
              ),
            ),
            Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.group_sharp, color: Colors.purple[700], size: 17),
                Text(
                  ' ${numberOfFollowers.toDouble()}M',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.0),
                ),
                SizedBox(width: 10),
                Text(
                  ' ${rating.toDouble()}M',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14.0),
                ),
                Icon(Icons.star, color: Colors.yellow, size: 17),
              ],
            )
          ],
        ),
      ),
    );
  }
}
