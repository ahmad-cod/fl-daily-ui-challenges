import 'package:day2/components/payment_tile.dart';
import 'package:day2/models/upcoming_payment.dart';
import 'package:day2/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class UpcomingPayments extends StatelessWidget {
  const UpcomingPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Heading4(data: 'UpcomingPayments'),
              Row(
                children: [
                  Text('View all'),
                  SizedBox(width: 4,),
                  Icon(Icons.arrow_forward_outlined)
                ],
              )
            ],
          ),
        ),

        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: uPayments.length,
            itemBuilder: (context, index) {
              final data = uPayments[index];
              return UPaymentTile(data: data);
            }
          ),
        )
      ],
    );
  }
}