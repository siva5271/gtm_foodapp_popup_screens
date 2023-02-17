import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(
        children: [
          Container(
            decoration: kBottomModalSheetDecoration,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'SELECT ADDRESS',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                const Text(
                  '+ Add New Address',
                  style: TextStyle(
                      color: cReddishColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CardElement(
                            image: Image.asset(
                              'assets/images/Home Chimney 2.png',
                            ),
                            residenceType: 'Home',
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          CardElement(
                              image: Image.asset(
                                  'assets/images/Office Building Double.png'),
                              residenceType: 'Office'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
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
    this.city = 'Kolkata',
    this.fullAddress = 'Kolkata, West Bengal',
    this.mapAddress = 'Kolkata, West Bengal',
    required this.residenceType,
  });
  final Image image;
  final String residenceType;
  final String city;
  final String fullAddress;
  final String mapAddress;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                residenceType,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  BottomModalSheetTitle(title: 'City:'),
                  BottomModalSheetScript(script: city)
                ],
              ),
              Row(
                children: [
                  BottomModalSheetTitle(title: 'Full Address:'),
                  BottomModalSheetScript(script: fullAddress)
                ],
              ),
              Row(
                children: [
                  BottomModalSheetTitle(title: 'Map Address:'),
                  BottomModalSheetScript(script: mapAddress)
                ],
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Group 288.png',
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/Group 287.png')
          ],
        )
      ],
    );
  }
}
