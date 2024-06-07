import 'package:day2/models/transaction.dart';
import 'package:day2/models/upcoming_payment.dart';
import 'package:day2/widgets/grey_text.dart';
import 'package:day2/widgets/money_text.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.data, required this.dataType});
  final dynamic data;
  final Type dataType;

  @override
  Widget build(BuildContext context) {
    final String clientData;
    final String moneyPrefix;
    Widget subtitleData;
    Widget trailingBottomData;

    switch (dataType) {
      case Transaction:
        String clientPrefix = data.transactionType == 'received' ? "From " : "To ";
        clientData = clientPrefix + data.client;
        subtitleData = Row(
        children: [
          GreyText(data: data.role),
          const SizedBox(width: 10),
          GreyText(data: data.workType)
        ],
      );
      trailingBottomData = Container(
        padding: const EdgeInsets.all(5),
        color: Colors.grey,
          child: Text(data.transactionType as String,)
        );
        break;
      case UpcomingPayment:
        clientData = 'From ${data.client}';
        subtitleData = GreyText(data: data.date);

        
        break;
      default:
        clientData = data.client;
        subtitleData = Row(
        children: [
          GreyText(data: data.role),
          const SizedBox(width: 10),
          GreyText(data: data.contractType)
        ],
      );
        trailingBottomData = GreyText(data: data.interval);
        moneyPrefix = '\$';
    }
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFF4D4F97),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage(data.imagePath),
      ),
        ),
      ),
      title: Text(clientData,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      subtitle: subtitleData,
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoneyText(amount: data.cost, moneyPrefix: '',),
          GreyText(data: data.interval)
        ],
      ),
    );
  }
}