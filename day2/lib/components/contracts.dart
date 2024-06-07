import 'package:day2/components/contract_tile.dart';
import 'package:day2/models/contract.dart';
import 'package:day2/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class Contracts extends StatelessWidget {
  const Contracts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading4(data: 'Contracts'),
        SizedBox(
          height: 120,
          child: ListView.builder(
              itemCount: contracts.length,
              itemBuilder: (context, index) {
                final contract = contracts[index];
                return ContractTile(contract: contract);
              }),
        )
      ],
    );
  }
}
