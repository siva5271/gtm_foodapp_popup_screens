import 'package:flutter/material.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';

import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:badges/badges.dart' as badges;
import '../constants/styles.dart';

const kHeight = SizedBox(
  height: 10,
);

class AvailableCoupons extends StatelessWidget {
  const AvailableCoupons({super.key});

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
                  const Center(
                    child: Text(
                      'AVAILABLE COUPONS',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight,
                      const Text(
                        'Get 50% off upto \$100',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      kHeight,
                      const Text('Valid only on this order'),
                      kHeight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/Group 123.png'),
                          const Text(
                            'APPLY THIS COUPON',
                            style:
                                TextStyle(fontSize: 14, color: cReddishColor),
                          )
                        ],
                      ),
                      kHeight,
                      const Divider(
                        thickness: 4,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight,
                      const Text(
                        'Get 50% off upto \$100',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      kHeight,
                      const Text('Valid only on this order'),
                      kHeight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/Group 123.png'),
                          const Text(
                            'APPLY THIS COUPON',
                            style:
                                TextStyle(fontSize: 14, color: cGreyishColor),
                          )
                        ],
                      ),
                      kHeight,
                      const Divider(
                        thickness: 2,
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
