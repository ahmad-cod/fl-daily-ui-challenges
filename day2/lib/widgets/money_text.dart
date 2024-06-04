import 'package:flutter/material.dart';

class MoneyText extends StatelessWidget {
  const MoneyText({super.key, required this.amount});
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Text('\$${amount.toString()}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )
          );
  }
}