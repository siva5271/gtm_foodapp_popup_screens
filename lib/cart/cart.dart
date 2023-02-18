import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/custom_elevatedbutton.dart';

import '../bottomModalSheetWidgets/bottom_modalsheet_script.dart';

final card2ArrowIcon = const Icon(Icons.keyboard_arrow_down_rounded);

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: kAppBarBackIcon,
        title: const Text(
          'Kantavai Fast Food',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          OutlinedButton(onPressed: () {}, child: const Text('Coupons'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Text(
                    'Item Added',
                    style: TextStyle(fontSize: 24),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Group 134.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(child: Text('Butter Veda paw')),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.red),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.remove,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('2'),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.add,
                                  size: 12,
                                )
                              ],
                            ))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('\$40'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: BottomModalSheetScript(
                        script: 'Full Plate[2 pieces]',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/Group 134.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(child: Text('Butter Veda paw')),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.red),
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.remove,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('2'),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.add,
                                  size: 12,
                                )
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              )),
              Card(
                child: Column(
                  children: [
                    Card2Elements(
                        leftWidget: const Text('+ Add More Items'),
                        rightWidget: Row(
                          children: const [
                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Card2Elements(
                        leftWidget: Text('Order Type'),
                        rightWidget: Row(
                          children: [Text('Delivery'), card2ArrowIcon],
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Card2Elements(
                        leftWidget: Text('Call Confirmation'),
                        rightWidget: Row(
                          children: [Text('Yes'), card2ArrowIcon],
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Card2Elements(
                        leftWidget: Text('Add Scheduled Delivery'),
                        rightWidget: Row(
                          children: [
                            Text('Select Date & Time'),
                            card2ArrowIcon
                          ],
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Card2Elements(
                        leftWidget: Text("Phone Number"),
                        rightWidget: Row(
                          children: [Text('1111111111'), card2ArrowIcon],
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 2,
                        )),
                      ],
                    ),
                    Card2Elements(
                        leftWidget: Text("Add Cooking ir Order Instructions"),
                        rightWidget: card2ArrowIcon),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card2Elements(
                      leftWidget: Text('Login to use coupons'),
                      rightWidget: card2ArrowIcon),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Text('BILL SUMMARY'),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  ))
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Card2Elements(
                          leftWidget:
                              BottomModalSheetTitle(title: 'Item Total'),
                          rightWidget: Text('\$457')),
                      Card2Elements(
                          leftWidget: Text('Delivery charges for 9 km'),
                          rightWidget: Text('\$0')),
                      Card2Elements(
                          leftWidget:
                              Text('Government charges and restaurant charges'),
                          rightWidget: Text('\$0')),
                      Card2Elements(
                          leftWidget:
                              BottomModalSheetTitle(title: 'Grand Total'),
                          rightWidget: Text('\$457'))
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card2Elements(
                      leftWidget: const Text('Add Personal Details'),
                      rightWidget: card2ArrowIcon),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BottomModalSheetTitle(title: 'Cancellation Policy'),
                      BottomModalSheetScript(
                          script:
                              'Orders once placed cannot be cancelled and are non-refundable'),
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(title: 'Add Personal Details')
            ],
          ),
        ),
      ),
    );
  }
}

class Card2Elements extends StatelessWidget {
  const Card2Elements({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
  });
  final Widget leftWidget;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [leftWidget, rightWidget],
      ),
    );
  }
}
