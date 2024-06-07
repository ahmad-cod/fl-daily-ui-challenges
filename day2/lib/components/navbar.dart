import 'package:day2/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NavItem(icon: Icons.card_travel, text: 'Card'),
        NavItem(icon: Icons.card_travel, text: 'Card'),
        NavItem(icon: Icons.badge, text: 'Badge'),
        NavItem(icon: Icons.card_travel, text: 'Card'),
        NavItem(icon: Icons.message, text: 'Message'),
        NavItem(icon: Icons.card_travel, text: 'Card'),
        NavItem(icon: Icons.card_travel, text: 'Card'),
      ],
    );
  }
}