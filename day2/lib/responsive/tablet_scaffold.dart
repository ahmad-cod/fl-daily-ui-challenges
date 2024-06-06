import 'package:day2/constants.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar,
      drawer: myDrawer,
    );
  }
}