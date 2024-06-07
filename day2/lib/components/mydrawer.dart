import 'package:day2/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: Icon(
            Iconsax.category,
            size: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            'Overview',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ),
        const SizedBox(
          height: 26,
        ),
        const DrawerTile(icon: Iconsax.sms, text: 'Messages'),
        const SizedBox(
          height: 24,
        ),
        const DrawerTile(icon: Iconsax.card_pos, text: 'Card'),
        const SizedBox(
          height: 24,
        ),
        const DrawerTile(icon: Iconsax.receipt_add, text: 'Create invoice'),
        const SizedBox(
          height: 24,
        ),
        const DrawerTile(icon: Iconsax.calendar_2, text: 'Calendar'),
        const SizedBox(
          height: 24,
        ),
        const DrawerTile(icon: Iconsax.chart, text: 'Statics'),
        const SizedBox(
          height: 24,
        ),
        const DrawerTile(icon: Iconsax.document, text: 'Document'),
      ],
    ));
  }
}
