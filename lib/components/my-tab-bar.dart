import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoriesTabs(){
    return FoodCategories.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {

    return TabBar(
      controller: tabController,
      tabs: _buildCategoriesTabs(),

    
    );
  }
}