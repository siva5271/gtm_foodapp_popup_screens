import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:badges/badges.dart' as badges;

class PlacingYourOrder extends StatelessWidget {
  const PlacingYourOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(children: [
        Container(
          decoration: kBottomModalSheetDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Text(
                    'Placing Your Order',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Card(child: Icon(Icons.payment_outlined)),
                    ),
                    BottomModalSheetTitle(title: 'Pay \$84 cash on delivery')
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Card(child: Icon(Icons.home_outlined)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        BottomModalSheetTitle(title: 'Delivery to home'),
                        BottomModalSheetScript(script: 'Bhairahawa, Bank road')
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const Expanded(
                      child: ProgressBar(
                        value: 0.5,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 3, 250, 11),
                            Color.fromARGB(105, 187, 255, 197)
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: cLighterReddishColor),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
