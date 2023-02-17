import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

const heightBox = SizedBox(
  height: 15,
);

class FoodDetails1 extends StatelessWidget {
  const FoodDetails1({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          decoration: kBottomModalSheetDecoration,
          child: Padding(
            padding: kBottomModalSheetOverallPadding,
            child: Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/pizza.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  heightBox,
                  Row(
                    children: [
                      Image.asset('assets/images/Group 148.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset('assets/images/Group 149.png')
                    ],
                  ),
                  heightBox,
                  const Text(
                    'Roasted Chicken',
                    style: TextStyle(fontSize: 22),
                  ),
                  heightBox,
                  const BottomModalSheetScript(
                      script:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
                  const Text(
                    'This is special note for some items',
                    style: TextStyle(fontSize: 10, color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
