import 'package:day2/models/contract.dart';
import 'package:day2/widgets/grey_text.dart';
import 'package:day2/widgets/money_text.dart';
import 'package:flutter/material.dart';

class ContractTile extends StatelessWidget {
  const ContractTile({super.key, required this.contract});
  final Contract contract;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      // leading: Container(
      //   width: 80,
      //   height: 80,
      //   decoration: BoxDecoration(
      //     color: const Color(0xFF4D4F97),
      //     shape: BoxShape.rectangle,
      //     borderRadius: BorderRadius.circular(24),
      //   ),
      //   child: contract.imagePath.isEmpty
      //       ? const Center(
      //           child: Text(
      //           'O.',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ))
      //       : Center(
      //           child: Image.asset(
      //           'lib/images/${contract.imagePath}.png',
      //           width: 24,
      //           height: 24,
      //         )),
      // ),

      leading: Image.asset(
        'lib/images/${contract.imagePath}.png',
        width: 80,
        height: 80,
      ),
      title: Text(
        contract.client,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          GreyText(data: contract.role),
          const SizedBox(width: 10),
          GreyText(data: contract.contractType)
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoneyText(
            amount: contract.cost,
            moneyPrefix: '\$',
          ),
          GreyText(data: contract.interval)
        ],
      ),
    );
  }
}
