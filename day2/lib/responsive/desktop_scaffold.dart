import 'package:day2/constants.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          myDrawer,

          // rest of the body
          
        ],
      ),
    );
  }
}