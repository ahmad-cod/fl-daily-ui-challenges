import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.tertiary,
        size: 20,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    );
  }
}
