import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_items.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
        categories: FoodCategories.Burger,
        name: 'Burger w/ Fries',
        description: 'Burger with uicy fries',
        imagePath: 'lib/images/burger/burger_fries.png',
        price: 89.29,
        availableAddOns: [
          AddOn(name: 'Green Saunce', price: 12.0),
          AddOn(name: 'Extra Fries', price: 20.0),
          AddOn(name: 'coke', price: 50.0)
        ]),
    Food(
        categories: FoodCategories.Burger,
        name: 'Mac king',
        description: 'Huge Burger with uicy pattie',
        imagePath: 'lib/images/burger/mac_king.png',
        price: 100.29,
        availableAddOns: [
          AddOn(name: 'Green Saunce', price: 12.0),
          AddOn(name: 'Red Saunce', price: 12.0),
          AddOn(name: 'Double Pattie', price: 39.0),
          AddOn(name: 'coke', price: 50.0)
        ]),
    Food(
        categories: FoodCategories.Burger,
        name: 'Salad Burger',
        description: 'Healthy Burger with goodness of Salad',
        imagePath: 'lib/images/burger/salad_burger.png',
        price: 70.29,
        availableAddOns: [
          AddOn(name: 'Green Saunce', price: 12.0),
          AddOn(name: 'Red Saunce', price: 12.0),
          AddOn(name: 'coke', price: 50.0)
        ]),
    Food(
        categories: FoodCategories.Burger,
        name: 'Small Pattie',
        description: 'Small Pattie for small hunger, Big Taste !',
        imagePath: 'lib/images/burger/single_patti.png',
        price: 79.29,
        availableAddOns: [
          AddOn(name: 'Green Saunce', price: 12.0),
          AddOn(name: 'Red Saunce', price: 12.0),
          AddOn(name: 'Double Pattie', price: 29.0),
          AddOn(name: 'coke', price: 50.0)
        ]),
    Food(
        categories: FoodCategories.Burger,
        name: 'Small Cheeze Burger',
        description:
            'Cheezy burger loaded with Monzerala cheeze straight from europe',
        imagePath: 'lib/images/burger/small_cheeze.png',
        price: 800.29,
        availableAddOns: [
          AddOn(name: 'Green Saunce', price: 12.0),
          AddOn(name: 'Red Saunce', price: 12.0),
          AddOn(name: 'Extra Cheeze', price: 39.0),
          AddOn(name: 'coke', price: 50.0)
        ]),

    // Salad

    Food(
        categories: FoodCategories.Salad,
        name: 'Mashroom Salad',
        description:
            'Salad with goodness of Mashroom and zinc, that provide sharp mind.',
        imagePath: 'lib/images/salad/mashroom_salad.png',
        price: 189.0,
        availableAddOns: [
          AddOn(name: 'Extra Tomato', price: 20.0),
          AddOn(name: 'Mayoneese', price: 29.0),
          AddOn(name: 'Red Saunce', price: 29.0)
        ]),
    Food(
        categories: FoodCategories.Salad,
        name: 'Palak Salad',
        description:
            'Salad with goodness of palak and zinc, that provide sharp mind.',
        imagePath: 'lib/images/salad/palak_salad.png',
        price: 159.0,
        availableAddOns: [
          AddOn(name: 'Extra Tomato', price: 20.0),
          AddOn(name: 'Mayoneese', price: 29.0),
          AddOn(name: 'Red Saunce', price: 29.0)
        ]),
    Food(
        categories: FoodCategories.Salad,
        name: 'Paneer Salad',
        description: 'Salad with Protein rich Paneer, for health muscle.',
        imagePath: 'lib/images/salad/paneer_salad.png',
        price: 239.0,
        availableAddOns: [
          AddOn(name: 'Extra Tomato', price: 20.0),
          AddOn(name: 'Mayoneese', price: 29.0),
          AddOn(name: 'Rosted Paneer', price: 59.50),
          AddOn(name: 'Red Saunce', price: 29.0)
        ]),
    Food(
        categories: FoodCategories.Salad,
        name: 'Raw Mango Salad',
        description:
            'Vegetable salad with mango tangyness, finished with spices.',
        imagePath: 'lib/images/salad/raw_mango_salad.png',
        price: 159.0,
        availableAddOns: [
          AddOn(name: 'Extra Tomato', price: 20.0),
          AddOn(name: 'Mayoneese', price: 29.0),
          AddOn(name: 'Seperate Salt/pepper', price: 19.0),
          AddOn(name: 'Red Saunce', price: 29.0)
        ]),
    Food(
        categories: FoodCategories.Salad,
        name: 'Tomato Salad',
        description:
            'Salad with goodness of Tomatoes, good for those on weightLoss.',
        imagePath: 'lib/images/salad/tomato_salad.png',
        price: 149.0,
        availableAddOns: [
          AddOn(name: 'Extra Tomato', price: 20.0),
          AddOn(name: 'Mayoneese', price: 29.0),
          AddOn(name: 'Red Saunce', price: 29.0)
        ]),

    //desert
    Food(
        categories: FoodCategories.Desert,
        name: 'Bittercord Laddu',
        description:
            'Laddu made with bitterness of bittercord, special bitter taste. 5pc',
        imagePath: 'lib/images/desert/bittercord_laddu.png',
        price: 219.0,
        availableAddOns: [
          AddOn(name: 'Extra Sugar', price: 30.0),
          AddOn(name: '+2 ', price: 57.0)
        ]),
    Food(
        categories: FoodCategories.Desert,
        name: 'Cupcakes',
        description: '4pc, Cupcakes made fresh and ready to melt in mouth',
        imagePath: 'lib/images/desert/cupcakes.png',
        price: 289.0,
        availableAddOns: [
          AddOn(name: 'Extra Sugar', price: 30.0),
          AddOn(name: '+2 ', price: 89.0)
        ]),
    Food(
        categories: FoodCategories.Desert,
        name: 'Donout ',
        description:
            '5ps , Dounout finished with icing on top, LGBT sprinklers',
        imagePath: 'lib/images/desert/donout.png',
        price: 199.0,
        availableAddOns: [
          AddOn(name: 'Extra Sugar', price: 30.0),
          AddOn(name: '+2 ', price: 57.0)
        ]),
    Food(
        categories: FoodCategories.Desert,
        name: 'Jalebi ',
        description: '250gm Jalebi made right on order, served fresh and hot',
        imagePath: 'lib/images/desert/jalebi.png',
        price: 209.0,
        availableAddOns: [
          AddOn(name: 'Extra serup', price: 30.0),
          AddOn(name: 'rabri ', price: 157.0)
        ]),
    Food(
        categories: FoodCategories.Desert,
        name: 'Orange Pie ',
        description:
            'Orange pie made by profecional cheff with 10+ years of experience',
        imagePath: 'lib/images/desert/orange_pie.png',
        price: 319.0,
        availableAddOns: [
          AddOn(name: 'Cutlery', price: 21.0),
          AddOn(name: 'Large Size ', price: 112.0)
        ]),

    //drinks

    Food(
        categories: FoodCategories.Drinks,
        name: 'Coke',
        description: "Cold and fizzy coke",
        imagePath: 'lib/images/drinks/coke.png',
        price: 67.69,
        availableAddOns: [
          AddOn(name: 'Wiped creame', price: 17.0),
          AddOn(name: '+1', price: 59.0)
        ]),
    Food(
        categories: FoodCategories.Drinks,
        name: 'Cocktale',
        description: "Cold and fizzy fresh cocktale",
        imagePath: 'lib/images/drinks/cocktale.png',
        price: 97.69,
        availableAddOns: [
          AddOn(name: 'Seperate Soda', price: 30.0),
          AddOn(name: '+1', price: 74.0)
        ]),
    Food(
        categories: FoodCategories.Drinks,
        name: 'Lemonade',
        description: "Cold and fizzy, freshly prepared Lemonade",
        imagePath: 'lib/images/drinks/lemonade.png',
        price: 56.98,
        availableAddOns: [
          AddOn(name: 'Extra lemon', price: 9.0),
          AddOn(name: '+1', price: 47.0)
        ]),
    Food(
        categories: FoodCategories.Drinks,
        name: 'Mocktale',
        description: "Cold and fizzy mocktale with herbs",
        imagePath: 'lib/images/drinks/mocktale.png',
        price: 112.69,
        availableAddOns: [
          AddOn(name: 'Acetafateda', price: 27.0),
          AddOn(name: '+1', price: 89.0)
        ]),
    Food(
        categories: FoodCategories.Drinks,
        name: 'Orange Juice',
        description: "Orange juice freshly prepared on order",
        imagePath: 'lib/images/drinks/orange_juice.png',
        price: 47.69,
        availableAddOns: [
          AddOn(name: '+1', price: 45.0),
        ]),
    // sides

    Food(
        categories: FoodCategories.Sides,
        name: 'Noodels',
        description: 'Chineese noodels with asian seasining',
        imagePath: 'lib/images/sides/noodles.png',
        price: 146.45,
        availableAddOns: [
          AddOn(name: 'Red Saunce', price: 24.0),
          AddOn(name: 'Green chiele Saunce', price: 24.0),
          AddOn(name: 'Salad', price: 39.0)
        ]),
    Food(
        categories: FoodCategories.Sides,
        name: 'Pancakes',
        description: 'Fresh Pancakes made fresh with pure ingredients.',
        imagePath: 'lib/images/sides/pancakes.png',
        price: 246.45,
        availableAddOns: [
          AddOn(name: 'Extra Homey', price: 64.0),
          AddOn(name: 'basel leaves', price: 14.0),
        ]),
    Food(
        categories: FoodCategories.Sides,
        name: 'Chocolate Pastries',
        description: 'Egg less Pastries available 24/7.',
        imagePath: 'lib/images/sides/pastries.png',
        price: 56.0,
        availableAddOns: []),
    Food(
        categories: FoodCategories.Sides,
        name: 'Soup',
        description: 'Soya Soup prepared with imported soya saunce.',
        imagePath: 'lib/images/sides/soup.png',
        price: 178.45,
        availableAddOns: [
          AddOn(name: 'Cutlary', price: 21.0),
        ]),
    Food(
        categories: FoodCategories.Sides,
        name: 'Tea and Sandwich',
        description: 'Tea and potato sandwich',
        imagePath: 'lib/images/sides/tea_sandwich.png',
        price: 99.45,
        availableAddOns: [
          AddOn(name: 'Red Saunce', price: 24.0),
          AddOn(name: 'Green chiele Saunce', price: 24.0),
          AddOn(name: 'Biscuit', price: 29.0)
        ]),
  ];

  // getter
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // operation

  //User cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<AddOn> selectedAddOn) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddOn =
          ListEquality().equals(item.selectedAddOn, selectedAddOn);

      return isSameAddOn && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddOn: selectedAddOn),
      );
    }
    notifyListeners();
  }

  // Remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
  }

  // Get Total Price
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (AddOn addOn in cartItem.selectedAddOn) {
        itemTotal += addOn.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    notifyListeners();

    return total;
  }

  // getting total items from cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    notifyListeners();
    return totalItemCount;
  }

  // Cleare cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // helper
}
