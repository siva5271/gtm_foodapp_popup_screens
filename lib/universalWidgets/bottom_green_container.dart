import 'package:flutter/material.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';

class BottomGreenElement extends StatelessWidget {
  const BottomGreenElement(
      {super.key,
      required this.leftWidget,
      required this.rightWidget,
      this.givenColor = const Color.fromARGB(255, 103, 221, 63)});
  final Color givenColor;
  final Widget leftWidget;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: givenColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [leftWidget, rightWidget],
          ),
        ),
      ),
    );
  }
}
