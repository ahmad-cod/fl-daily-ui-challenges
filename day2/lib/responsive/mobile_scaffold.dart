import 'package:day2/constants.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBgColor,
      drawer: myDrawer,
    );
  }
}