import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
   const MyDescriptionBox({super.key});
  

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextColor = TextStyle(color:Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextColor = TextStyle(color:Theme.of(context).colorScheme.primary);
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Theme.of(context).colorScheme.secondary)),
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Text('\$0.99',style: myPrimaryTextColor,), Text('Free Delivery',style: mySecondaryTextColor,)],
            ),
            Column(
              children: [Text('15-20 min',style: myPrimaryTextColor,), Text('Delivery Time',style: mySecondaryTextColor,)],
            )
          ],
        ),
      ),
    );
  }
}
