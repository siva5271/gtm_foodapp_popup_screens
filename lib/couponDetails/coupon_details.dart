import 'package:flutter/material.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';

import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:badges/badges.dart' as badges;

import '../constants/colors.dart';

const kHeight = SizedBox(
  height: 10,
);

class CouponDetails extends StatelessWidget {
  const CouponDetails({super.key});

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
                    'Coupon Details',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color.fromARGB(68, 54, 54, 54),
                  ),
                  const Text(
                    'Free Veg Mojo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'Pugau',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  kHeight,
                  const Text(
                    'Get 50% off upto \$100',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  kHeight,
                  const Text('Valid only on this order'),
                  kHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/Group 123.png'),
                      const Text(
                        'TAP TO COPY',
                        style: TextStyle(fontSize: 10, color: cReddishColor),
                      )
                    ],
                  ),
                  kHeight,
                  const Divider(
                    thickness: 2,
                  ),
                  const Text(
                    'Offer terms and conditions',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 50,
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
