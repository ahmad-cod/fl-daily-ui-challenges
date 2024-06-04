import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  const GreyText({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data,
            style: const TextStyle(
              color: Colors.grey,
            ),
          );
  }
}