import 'package:flutter/material.dart';

class LocationBox extends StatelessWidget {
  const LocationBox({super.key});

  void openLocationEditBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Location..'),
        content: const TextField(
          decoration: InputDecoration(
            hintText: 'Search here',
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Save'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationEditBox(context),
            child: Row(
              children: [
                Text(
                  'Hollywood 456 Street',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
