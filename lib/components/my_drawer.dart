import 'package:flutter/material.dart';
import 'package:food_delivery/components/dwawer_tiles.dart';
import 'package:food_delivery/pages/settingspage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Icon(
            Icons.food_bank_outlined,
            size: 100.0,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              height: 2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DrawerTile(
            title: 'H O M E',
            iconData: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          DrawerTile(
            title: 'S E T T I N I N G',
            iconData: Icons.settings,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            ),
          ),
          const Spacer(),
          DrawerTile(
            title: 'L O G O U T',
            iconData: Icons.logout,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
