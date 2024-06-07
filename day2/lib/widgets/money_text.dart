import 'package:flutter/material.dart';

class MoneyText extends StatelessWidget {
  const MoneyText({super.key, required this.amount, required this.moneyPrefix});
  final String amount;
  final String moneyPrefix;

  @override
  Widget build(BuildContext context) {
    return Text('$moneyPrefix$amount',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ));
  }
}
