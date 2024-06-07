import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ad extends StatelessWidget {
  const Ad({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('lib/images/etdbe.svg',
      width: 400,
      height: 200,
    );
  }
}