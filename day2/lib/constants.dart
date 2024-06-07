import 'package:day2/components/ad.dart';
import 'package:day2/components/add_wallet.dart';
import 'package:day2/components/balance.dart';
import 'package:day2/components/contracts.dart';
import 'package:day2/components/mydrawer.dart';
import 'package:day2/components/transactions.dart';
import 'package:day2/components/upcoming_payments.dart';
import 'package:day2/components/upgrade_box.dart';
import 'package:day2/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

var myDefaultBgColor = Colors.grey.shade100;
var myAppBar = AppBar(
  // toolbarHeight: 70,
  actions: [
    const Icon(
      Iconsax.search_normal,
      size: 24,
    ),
    const SizedBox(
      width: 32,
    ),
    const Icon(
      Iconsax.notification,
      size: 24,
    ),
    const SizedBox(
      width: 32,
    ),
    Image.asset(
      'lib/images/avatar.png',
      width: 32,
      height: 32,
    ),
    // const SizedBox(width: 32,),
  ],
);

var upgradeToPro = const UpgradeBox();

var myDrawer = Drawer(
  width: 271,
  backgroundColor: Colors.white,
  child: Padding(
    padding: const EdgeInsets.only(left: 41, top: 35, right: 40, bottom: 36),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'lib/images/logo.png',
              width: 28,
              height: 28,
            ),
            const SizedBox(
              width: 12,
            ),
            const Heading4(
              data: 'CHEQUE',
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                  color: const Color(0xFFF8AB8A),
                  borderRadius: BorderRadius.circular(4)),
              child: const Text(
                'BASIC',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 26,
        ),
        const MyDrawer(),
        const SizedBox(
          height: 30,
        ),
        upgradeToPro,
      ],
    ),
  ),
);

var walletBalance = const WalletBalance();
var addWallet = const AddWallet();
var upcomingPayments = const UpcomingPayments();

var transactions = const Transactions();

var contracts = const Contracts();

var experienceDigitalBanking = const Ad();
