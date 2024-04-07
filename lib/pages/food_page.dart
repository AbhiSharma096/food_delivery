import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/components/mybutton.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddOn = {};
  FoodPage({super.key, required this.food}) {
    for (AddOn addOn in food.availableAddOns) {
      selectedAddOn[addOn] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  // Add to cart 
  void addToCart(Food food, Map<AddOn, bool> selectedAddOn) {
    Navigator.pop(context);

    List<AddOn> currentlySelectedAddOn = [];
    for (AddOn addon in widget.food.availableAddOns) {
      if (widget.selectedAddOn[AddOn] == true) {
        currentlySelectedAddOn.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddOn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                //food image
                Image.asset(widget.food.imagePath),
                //food Name
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      //food price
                      Text(
                        "Rs ${widget.food.price.toString()}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      // Food Description
                      Text(
                        widget.food.description,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // AddOn
                      const Text(
                        'AddOn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      // Food Addon
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: widget.food.availableAddOns.length,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              AddOn addOn = widget.food.availableAddOns[index];
                              return CheckboxListTile(
                                title: Text(
                                  addOn.name,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                subtitle: Text("Rs ${addOn.price}"),
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddOn[addOn] = value!;
                                  });
                                },
                                value: widget.selectedAddOn[addOn],
                              );
                            }),
                      )
                    ],
                  ),
                ),
                MyButton(
                  text: 'Add to cart',
                  onTap: () => addToCart(widget.food, widget.selectedAddOn),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
            SafeArea(
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  margin: const EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
