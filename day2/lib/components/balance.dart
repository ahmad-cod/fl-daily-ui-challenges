import 'package:day2/widgets/blurred_card.dart';
import 'package:day2/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class WalletBalance extends StatelessWidget {
  const WalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Heading4(data: 'Wallet Balance'),

        BlurredCard(position: '1'),
        SizedBox(height: 10,), 
      ],
    );
  }
}
