import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlurredCard extends StatelessWidget {
  const BlurredCard({super.key, required this.position});

  final String position;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(
        'lib/images/card$position.svg',
        width: 300,
        height: 200,
      ),
      Positioned(
          bottom: 7,
          left: 7,
          child: Image.asset(
            'lib/images/blur$position.png',
            height: 90,
          ))
    ]);
  }
}
