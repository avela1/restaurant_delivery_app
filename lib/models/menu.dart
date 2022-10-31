// ignore_for_file: constant_identifier_names

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Menu {
  final String id;
  final List<dynamic> categories;
  final String title;
  final String desc;
  final int price;
  final List<String> imgUrl;
  final String ingredients;
  final int duration;
  final String returnPolicy;
  final bool isFavourite;

  const Menu({
    required this.desc,
    required this.price,
    required this.returnPolicy,
    required this.id,
    required this.categories,
    required this.title,
    required this.imgUrl,
    this.ingredients = '',
    required this.duration,
    this.isFavourite = false,
  });
}
