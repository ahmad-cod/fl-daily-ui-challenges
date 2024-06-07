import 'package:day2/components/ad.dart';
import 'package:day2/components/balance.dart';
import 'package:day2/components/contracts.dart';
import 'package:day2/components/transactions.dart';
import 'package:day2/components/upcoming_payments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // SvgPicture.asset('lib/images/search-normal.svg', width: 24, height: 24,),
          // const SizedBox(width: 10,),
          SvgPicture.asset('lib/images/avatar.svg', width: 24, height: 24,),
          // const Icon(Icons.notifications_outlined),
        ],
      ),
      body: ListView(
        children: const [
          WalletBalance(),
          Contracts(),
          Transactions(),
          UpcomingPayments(),
          SizedBox(height: 10,),
          Ad(),
        ],
      ),
    );
  }
}