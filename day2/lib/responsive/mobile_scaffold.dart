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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        children: [
          walletBalance,
          addWallet,
          const SizedBox(height: 38,),
          upcomingPayments,
          experienceDigitalBanking,
          const SizedBox(height: 38,),
          contracts,
          const SizedBox(height: 38,),
          transactions,
        ],
      ),
    );
  }
}