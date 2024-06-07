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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        children: [
          SizedBox(
            width: 600,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  walletBalance,
                  addWallet,
                ],
              ),
            ),
          ),
          upcomingPayments,
          experienceDigitalBanking,
          contracts,
          transactions,
        ],
      ),
    );
  }
}