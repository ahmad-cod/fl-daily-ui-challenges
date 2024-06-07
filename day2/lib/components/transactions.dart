import 'package:day2/components/transaction_tile.dart';
import 'package:day2/models/transaction.dart';
import 'package:day2/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Heading4(data: 'Transactions'),
            Row(
              children: [
                Text('View all'),
                SizedBox(width: 4,),
                Icon(Icons.arrow_forward_outlined)
              ],
            )
          ],
        ),

        SizedBox(
          height: 340,
          child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return TransactionTile(transaction: transaction);
              // return  ListTile(
              //   title: Text(transaction.client),
              // );
            }
          ),
        )
      ],
    );
  }
}