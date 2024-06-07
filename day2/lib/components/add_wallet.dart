import 'package:day2/widgets/blurred_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWallet extends StatelessWidget {
  const AddWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Add new wallet',
            textAlign: TextAlign.start,
              style: GoogleFonts.sora(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 16,),
            SvgPicture.asset('lib/images/wallet-add.svg',
              width: 24,
              height: 24,
            )
          ],
        ),
        const BlurredCard(position: '2')
      ],
    );
  }
}