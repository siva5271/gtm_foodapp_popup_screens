import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;

import '../universalWidgets/bottom_green_container.dart';

class SelectOption extends StatelessWidget {
  const SelectOption({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(
        children: [
          Container(
            width: double.infinity,
            decoration: kBottomModalSheetDecoration,
            child: Column(
              children: [
                Padding(
                  padding: kBottomModalSheetOverallPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BottomModalSheetTitle(title: 'FORTUNE BEASAN FLOUR'),
                      SizedBox(
                        height: 25,
                      ),
                      CardElement(
                        image: Image.asset('assets/images/Rectangle 11.png'),
                      ),
                      CardElement(
                        image: Image.asset('assets/images/Rectangle 11.png'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                BottomGreenElement(
                  leftWidget: BottomModalSheetTitle(
                    title: 'Item total \$0',
                    fontColor: Colors.white,
                  ),
                  rightWidget: BottomModalSheetTitle(
                    title: 'DONE',
                    fontColor: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardElement extends StatelessWidget {
  const CardElement({
    super.key,
    required this.image,
  });
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                badges.Badge(
                    position: badges.BadgePosition.custom(start: -20, top: -20),
                    badgeContent: Image.asset('assets/images/Group 8.png'),
                    child: Image.asset('assets/images/Rectangle 13.png')),
                const SizedBox(
                  width: 25,
                ),
                const Text('500g')
              ],
            ),
            badges.Badge(
              position: badges.BadgePosition.custom(top: -30),
              badgeContent: Image.asset('assets/images/Rectangle 11.png'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text(
                        '\$660',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '\$760',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10,
                            color: cGreyishColor),
                      )
                    ],
                  ),
                  const Text(
                    '\$82.4/100g',
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'ADD',
                  style: TextStyle(color: Colors.green),
                ))
          ],
        ),
      ),
    );
  }
}
