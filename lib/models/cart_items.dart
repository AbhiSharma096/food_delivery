import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class CartItem {
  Food food;
  List<AddOn> selectedAddOn;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddOn,
    this.quantity = 1,
  });

  double get tottlePrice {
    double addonsPrice =
        selectedAddOn.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
