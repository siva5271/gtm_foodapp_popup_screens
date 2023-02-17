import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

class ListenCorrect extends StatelessWidget {
  const ListenCorrect({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomModalSheetTitle(title: 'Pizza'),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/Group 112.png')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
