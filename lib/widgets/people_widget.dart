import 'package:flutter/material.dart';
import 'package:test_tasks/models/people_model.dart';
import 'package:test_tasks/widgets/people_card.dart';

class PeopleWidget extends StatelessWidget {
  final List<People> _peoples = peoples;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _peoples.length,
        itemBuilder: (BuildContext context, int index) {
          return PeopleCard(
            name: _peoples[index].name,
            age: _peoples[index].age,
            imagePath: _peoples[index].imagePath,
            numberOfFollowers: _peoples[index].numberOfFollowers,
            rating: _peoples[index].rating,
          );
        },
      ),
    );
  }
}
