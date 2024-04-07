import 'package:flutter/material.dart';
import 'package:food_delivery/components/my-description_box.dart';
import 'package:food_delivery/components/my-tab-bar.dart';
import 'package:food_delivery/components/my_current-location.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_food_tile.dart';
import 'package:food_delivery/components/sliver_appbar.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  List<Food> _filterMenuByCategory(
      FoodCategories categories, List<Food> fullMenu) {
    return fullMenu.where((food) => food.categories == categories).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategories.values.map((categories) {
      List<Food> categoryMenu = _filterMenuByCategory(categories, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
              food: food,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(food: food))));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 15,
                        endIndent: 15,
                        color: Theme.of(context).colorScheme.background,
                        height: 2,
                      ),
                      const LocationBox(),
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            ),
          )),
    );
  }
}
