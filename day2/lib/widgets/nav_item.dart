import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey,),
        const SizedBox(width: 15),
        Text(text,
          style: const TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}