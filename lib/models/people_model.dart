class People {
  final String name;
  final int age;
  final double numberOfFollowers;
  final double rating;
  final String imagePath;

  People(
      {this.name,
      this.imagePath,
      this.age,
      this.numberOfFollowers,
      this.rating});
}

final List<People> peoples = [
  People(
    name: "Левиз",
    age: 26,
    numberOfFollowers: 13.5,
    rating: 5.0,
    imagePath: "images/image/profile.jpg",
  ),
  People(
    name: "Карина",
    age: 36,
    numberOfFollowers: 3.5,
    rating: 4.4,
    imagePath: "images/image/profile.jpg",
  ),
  People(
    name: "Карина",
    age: 26,
    numberOfFollowers: 1.5,
    rating: 4.4,
    imagePath: "images/image/profile.jpg",
  ),
  People(
    name: "Левиз",
    age: 26,
    numberOfFollowers: 13.5,
    rating: 5.0,
    imagePath: "images/image/profile.jpg",
  ),
  People(
    name: "Карина",
    age: 36,
    numberOfFollowers: 3.5,
    rating: 4.4,
    imagePath: "images/image/profile.jpg",
  ),
  People(
    name: "Карина",
    age: 26,
    numberOfFollowers: 1.5,
    rating: 4.4,
    imagePath: "images/image/profile.jpg",
  ),
];
