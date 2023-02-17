import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;
import '../bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import '../constants/colors.dart';

class RepeatWithSameCombination extends StatelessWidget {
  const RepeatWithSameCombination({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(
        children: [
          Container(
            decoration: kBottomModalSheetDecoration,
            child: Padding(
              padding: kBottomModalSheetOverallPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Repeat with same combinations?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Group 148.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Chicken Biriyani',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BottomModalSheetTitle(title: '\$190'),
                        BottomModalSheetTitle(title: '\$190')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BottomModalSheetScript(
                    script: 'Half[2 pieces]',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text('Add New'))),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: cReddishColor, width: 2)),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Repeat Last',
                                  style: TextStyle(color: cReddishColor),
                                ))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
