import 'package:flutter/material.dart';

class Heading4 extends StatelessWidget {
  const Heading4({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontFamily: 'OPTIVenus',
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
