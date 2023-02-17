import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gtm_foodapp_popup_screens/universalWidgets/bottom_green_container.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: kAppBarBackIcon,
        backgroundColor: Colors.white,
        title: Text(
          'Hoichi Restaurant',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Colors.black,
            size: 40,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group 134.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                BottomModalSheetTitle(title: 'Veg')
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/Group 135.png'),
                                SizedBox(
                                  width: 10,
                                ),
                                BottomModalSheetTitle(title: 'Non Veg')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: cGreyishColor,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: cReddishColor,
                          ),
                          Text(
                            'Search Menu',
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Text(
                  'Recommended (30)',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Divider(
                  thickness: 2,
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      CustomFoodCard(),
                      Divider(
                        thickness: 2,
                      ),
                      CustomFoodCard(
                        statusText: 'Out of stock',
                        statusColor: cGreyishColor,
                        comment: 'After 4:30',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      CustomFoodCard(),
                      Divider(
                        thickness: 2,
                      ),
                      CustomFoodCard(
                        statusText: 'Out of stock',
                        statusColor: cGreyishColor,
                        comment: 'After 4:30',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cLighterReddishColor),
                  onPressed: () {},
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              BottomGreenElement(
                  givenColor: cReddishColor,
                  leftWidget: Text(
                    '1 ITEM ADDED | \$90 plus',
                    style: TextStyle(color: Colors.white),
                  ),
                  rightWidget: Row(
                    children: [
                      Text(
                        'VIEW CART',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class CustomFoodCard extends StatelessWidget {
  const CustomFoodCard(
      {super.key,
      this.statusText = '+ Add',
      this.statusColor = cReddishColor,
      this.comment = 'Customisable'});
  final String statusText;
  final Color statusColor;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Regular Sandwich',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/Group 98.png'),
                      Image.asset('assets/images/Group 22.png')
                    ],
                  ),
                  Text('Rs.180/ plate'),
                  BottomModalSheetScript(
                      script: 'With tartar sauce and tomato sauce')
                ],
              ),
              Column(
                children: [
                  Stack(alignment: Alignment.bottomCenter, children: [
                    Image.asset('assets/images/Rectangle 93.png'),
                    Wrap(children: [
                      Container(
                        color: Colors.white,
                        child: Text(
                          statusText,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: statusColor),
                        ),
                      ),
                    ]),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  BottomModalSheetScript(
                    script: comment,
                    customFontSize: 8,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
