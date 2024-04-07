import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData? iconData;
  final String title;
  final Function()? onTap;
  const DrawerTile({super.key, this.iconData, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          iconData,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
