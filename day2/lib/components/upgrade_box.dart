import 'package:flutter/material.dart';

class UpgradeBox extends StatelessWidget {
  const UpgradeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 27, right: 26, bottom: 29),
      width: 190,
      height: 140,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          image:
              const DecorationImage(image: AssetImage('lib/images/lines.png')),
          gradient: const LinearGradient(
              colors: [
                Color(0xFFF8AB8A),
                Color(0xFFF8DA8A),
              ],
              begin: AlignmentDirectional.topEnd,
              end: AlignmentDirectional.bottomStart,
              stops: [0.047, 0.837])),
      child: const Text(
        'Upgrade to Pro',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'OPTIVenus',
            letterSpacing: 0.5),
      ),
    );
  }
}
