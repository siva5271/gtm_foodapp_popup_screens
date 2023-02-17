import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

import '../bottomModalSheetWidgets/bottom_modalsheet_heading.dart';

class HowWeCalculateDeliveryCharge extends StatelessWidget {
  const HowWeCalculateDeliveryCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        decoration: kBottomModalSheetDecoration,
        child: Padding(
          padding: kBottomModalSheetOverallPadding,
          child: Column(
            children: [
              const BotomModalSheetHeading(
                  title: 'How We Calculate Delivery Charge'),
              SizedBox(
                height: 20,
              ),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(40),
                  1: FlexColumnWidth(53),
                  2: FlexColumnWidth(37)
                },
                border: TableBorder.all(
                    color: const Color.fromARGB(255, 177, 172, 172), width: 1),
                children: const [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Order Amount',
                        textAlign: TextAlign.center,
                        style: kTableHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Note',
                        textAlign: TextAlign.center,
                        style: kTableHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Delivery Charge',
                        textAlign: TextAlign.center,
                        style: kTableHeadingTextStyle,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.1 to 200',
                        textAlign: TextAlign.center,
                        style: kTableContentsTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Free delivery not available',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.20/km',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.1 to 200',
                        textAlign: TextAlign.center,
                        style: kTableContentsTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Free delivery not available',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.20/km',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.1 to 200',
                        textAlign: TextAlign.center,
                        style: kTableContentsTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Free delivery not available',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.20/km',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.1 to 200',
                        textAlign: TextAlign.center,
                        style: kTableContentsTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Free delivery not available',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.20/km',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.1 to 200',
                        textAlign: TextAlign.center,
                        style: kTableContentsTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Free delivery not available',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Rs.20/km',
                        style: kTableContentsTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ]),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
