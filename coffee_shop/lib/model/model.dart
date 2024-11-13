class CategoriesModel{
  final image;
  final String name;

  CategoriesModel({
    required this.image,
    required this.name
  });
}

class CoffeeModel{
 final image;
 final String name;
 final int price;

 CoffeeModel({
  required this.image,
  required this.name,
  required this.price
 });
}

class DrinksModel{
 final image;
 final String name;
 final int price;

 DrinksModel({
  required this.image,
  required this.name,
  required this.price
 });
}

class TeasModel{
 final image;
 final String name;
 final int price;

 TeasModel({
  required this.image,
  required this.name,
  required this.price
 });
}

class BakeryModel{
 final image;
 final String name;
 final int price;

 BakeryModel({
  required this.image,
  required this.name,
  required this.price
 });
}

class ItemSize{
  final String symbol;
  final String itemsize;

  ItemSize({
    required this.symbol,
    required this.itemsize
  });
}