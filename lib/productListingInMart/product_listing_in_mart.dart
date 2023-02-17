import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/bottom_green_container.dart';

const kAppBarWidth = SizedBox(width: 5);

class ProductListingInMart extends StatelessWidget {
  const ProductListingInMart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: kAppBarBackIcon,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/Grocery.png'),
            kAppBarWidth,
            Column(
              children: [
                BottomModalSheetTitle(title: 'Hot Deals'),
                BottomModalSheetScript(script: '510 Items')
              ],
            ),
            kAppBarWidth,
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/images/Group 6.png'),
            )
          ],
        ),
        actions: [Image.asset('assets/images/Group 7.png')],
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Row(
          children: [
            NavigationRail(
              indicatorColor: cGreyishColor,
              useIndicator: true,
              selectedIndex: 0,
              groupAlignment: -1,
              onDestinationSelected: (int index) {},
              labelType: NavigationRailLabelType.all,
              destinations: <NavigationRailDestination>[
                customnavigationElements(
                    'assets/images/Grocery.png', 'Hot  Deals'),
                customnavigationElements(
                    'assets/images/Bag of groceries.png', 'Rice, Atta\n & Dal'),
                customnavigationElements(
                    'assets/images/bottle.png', 'Oil, Masalas\n & More'),
                customnavigationElements(
                    'assets/images/purple star standing.png', 'Flash Sale'),
                customnavigationElements(
                    'assets/images/popcorn bowl.png', 'Breakfast\n & Snacks'),
              ],
            ),
            const VerticalDivider(thickness: 2, width: 1),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 50),
                  child: Row(
                    children: [
                      BottomModalSheetTitle(title: '79 Items'),
                      Text(' in Hot Deals')
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: cGreyishColor,
                ),
                Row(
                  children: [ProductCards(), ProductCards()],
                )
              ],
            ),
          ],
        ),
        BottomGreenElement(
            leftWidget: Text(
              '1 Item | \$216',
              style: TextStyle(color: Colors.white),
            ),
            rightWidget: Row(
              children: [
                Text(
                  'VIEW CART',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                )
              ],
            ))
      ]),
    );
  }

  NavigationRailDestination customnavigationElements(
      String path, String labelText) {
    return NavigationRailDestination(
      icon: Image.asset(path),
      selectedIcon: Image.asset(path),
      label: BottomModalSheetTitle(title: labelText),
    );
  }
}

class ProductCards extends StatelessWidget {
  const ProductCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2.65,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/images/Rectangle 3.png')),
              Text('Fortuen'),
              BottomModalSheetTitle(title: 'Besan Flour'),
              Text('500g'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BottomModalSheetScript(
                        script: '\$60',
                        givenTextDecoration: TextDecoration.lineThrough,
                      ),
                      Text('\$60')
                    ],
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'ADD',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
