import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_heading.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

class ShopCategory extends StatelessWidget {
  const ShopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.transparent,
      child: Center(
        child: Wrap(children: [
          Padding(
            padding: kBottomModalSheetOverallPadding,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: kBottomModalSheetOverallPadding,
                child: Column(
                  children: [
                    BotomModalSheetHeading(
                      title: 'SHOP BY CATEGORY',
                      givenFontSize: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Image.asset('assets/images/Rectangle 200.png'),
                          Image.asset('assets/images/Rectangle 196.png')
                        ]),
                        Stack(children: [
                          Image.asset('assets/images/Rectangle 200.png'),
                          Image.asset('assets/images/Rectangle 196.png')
                        ]),
                        Stack(children: [
                          Image.asset('assets/images/Rectangle 200.png'),
                          Image.asset('assets/images/Rectangle 196.png')
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
