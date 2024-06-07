import 'package:day2/constants.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      // appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          myDrawer,

          // rest of the body
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 40, right: 20),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      width: 600,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            walletBalance,
                            const SizedBox(
                              width: 20,
                            ),
                            addWallet,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 60,),
                    upcomingPayments,
                    experienceDigitalBanking,
                  ],
                ),
              )),

          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAppBar,
                    contracts,
                    const SizedBox(
                      height: 10,
                    ),
                    transactions,
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
