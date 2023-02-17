import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;

const kHeight = SizedBox(
  height: 15,
);

class SorryDidntHearThat extends StatelessWidget {
  const SorryDidntHearThat({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(
        children: [
          Container(
            width: double.infinity,
            decoration: kBottomModalSheetDecoration,
            child: Padding(
              padding: kBottomModalSheetOverallPadding,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 28.0),
                    child: Text(
                      'Sorry! Didn\'t hear that',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  kHeight,
                  const BottomModalSheetScript(
                      script: 'Try saying restaurant name or dish'),
                  kHeight,
                  Image.asset('assets/images/Group 121.png'),
                  kHeight,
                  const BottomModalSheetTitle(
                      title: 'Click the microphone to check again')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
