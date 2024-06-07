import 'package:day2/models/upcoming_payment.dart';
import 'package:day2/widgets/grey_text.dart';
import 'package:day2/widgets/money_text.dart';
import 'package:flutter/material.dart';

class UPaymentTile extends StatelessWidget {
  const UPaymentTile({super.key, required this.data});
  final UpcomingPayment data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ListTile(
        leading: Image.asset('lib/images/${data.imagePath}.png', width: 80, height: 80,),
        title: Text('From ${data.client}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        subtitle: GreyText(data: data.date),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MoneyText(amount: data.amount, moneyPrefix: '+ ',),
            GreyText(data: 'Due in ${data.dueIn}'),
            
            // Row(
            //   children: [
            //     GreyText(data: 'Due in ${data.dueIn}'),
      
                // Container(
                //   width: 16,
                //   height: 16,
                //   decoration: BoxDecoration(
                //     color: Colors.grey,
                //     borderRadius: BorderRadius.circular(8)
                //   ),
                // )
              // ],
            // )
          ],
        ),
      ),
    );
  }
}