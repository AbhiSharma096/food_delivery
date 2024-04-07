

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategories categories;
  List<AddOn> availableAddOns;

  Food({required this.categories, 
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.availableAddOns
  });
}

enum FoodCategories { Burger, Salad, Sides, Desert, Drinks }

class AddOn {
  String name;
  double price;

  AddOn({required this.name, required this.price});
}
