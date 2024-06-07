import 'package:day2/models/transaction.dart';
import 'package:day2/widgets/grey_text.dart';
import 'package:day2/widgets/money_text.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key, required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final moneyPrefix = transaction.transactionType == 'received' ? '+' : '-';
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      // leading: Container(
      //   width: 70,
      //   height: 80,
      //   decoration: BoxDecoration(
      //     color: Colors.grey.shade100,
      //     shape: BoxShape.rectangle,
      //     borderRadius: BorderRadius.circular(24),
      //   ),
      //   child: transaction.imagePath.isEmpty
      //       ? const Center(
      //           child: Text(
      //           'O.',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ))
      //       : Center(
      //           child: Image.asset(
      //           'lib/images/${transaction.imagePath}.png',
      //           width: 23,
      //           height: 23,
      //         )),
      // ),
      
      leading: Image.asset('lib/images/${transaction.imagePath}.png', width: 80, height: 80,),
      title: Text(transaction.client,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      subtitle: Row(
        children: [
          GreyText(data: transaction.role),
          const SizedBox(width: 10),
          GreyText(data: transaction.workType)
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoneyText(amount: transaction.amount, moneyPrefix: '$moneyPrefix\$',),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Color(0xFFE9EFFC),
            ),
            child: Text(transaction.transactionType.toUpperCase(),
              style: TextStyle(
                color: transaction.transactionType == 'received' ? const Color(0xFF5B8BE8) : const Color(0xFF979EA8),
                
              ),
            )
          )
        ],
      ),
    );
  }
}