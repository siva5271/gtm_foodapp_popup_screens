import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/custom_elevatedbutton.dart';
import 'package:badges/badges.dart' as badges;

class FoodDetails2 extends StatelessWidget {
  const FoodDetails2({super.key});

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'QUANTITY',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: cLighterReddishColor)),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Required',
                              style: TextStyle(color: cLighterReddishColor),
                            ),
                          ))
                    ],
                  ),
                  const BottomModalSheetScript(script: 'Select any product'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomModalSheetTitle(
                        title: 'Half[3 Pieces]',
                      ),
                      Row(
                        children: [
                          BottomModalSheetTitle(title: '\$189'),
                          Radio(
                              activeColor: cReddishColor,
                              value: "radio value",
                              groupValue: "radio value",
                              onChanged: (value) {})
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomModalSheetTitle(title: 'Full[3 Pieces]'),
                      Row(
                        children: [
                          BottomModalSheetTitle(title: '\$189'),
                          Radio(
                              activeColor: cReddishColor,
                              value: "radio value",
                              groupValue: "group value",
                              onChanged: (value) {})
                        ],
                      )
                    ],
                  ),
                  const Text('ADD COOKING INSTRUCTION',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.5, color: cGreyishColor))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: cReddishColor),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 12,
                                    color: cReddishColor,
                                  )),
                              const Text('1'),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    size: 12,
                                    color: cReddishColor,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: cReddishColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                minimumSize: const Size(double.infinity, 50),
                              ),
                              onPressed: () {},
                              child: Text('Add item \$123')),
                        ),
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
