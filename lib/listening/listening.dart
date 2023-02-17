import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;

class Listening extends StatelessWidget {
  const Listening({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: kBottomModalSheetDecoration,
            child: Padding(
              padding: kBottomModalSheetOverallPadding,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Listening....',
                      style: TextStyle(
                          color: cGreyishColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('assets/images/Group 121.png'),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
