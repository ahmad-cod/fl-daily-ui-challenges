import 'package:day2/mythemes.dart';
import 'package:day2/responsive/desktop_scaffold.dart';
import 'package:day2/responsive/mobile_scaffold.dart';
import 'package:day2/responsive/responsive_layout.dart';
import 'package:day2/responsive/tablet_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}