class Category {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;
  final String categoryType;

  Category(
      {this.categoryName,
      this.imagePath,
      this.numberOfItems,
      this.categoryType});
  get name => null;
}

final List<Category> categories = [
  Category(
    categoryName: "Реклама",
    imagePath: "images/image/hands.png",
    numberOfItems: 106,
    categoryType: "Кампанйй",
  ),
  Category(
    categoryName: "Взаимопиар",
    imagePath: "images/image/chats.png",
    numberOfItems: 56,
    categoryType: "заявок",
  ),
  Category(
    categoryName: "Бартер",
    imagePath: "images/image/like.png",
    numberOfItems: 106,
    categoryType: "заявок",
  ),
];
