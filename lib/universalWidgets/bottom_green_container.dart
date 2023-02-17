import 'package:flutter/material.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';

class BottomGreenElement extends StatelessWidget {
  const BottomGreenElement({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
  });
  final Widget leftWidget;
  final Widget rightWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Color.fromARGB(255, 103, 221, 63),
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
