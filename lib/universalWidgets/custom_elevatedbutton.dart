import 'package:flutter/material.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: cReddishColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: const Size(double.infinity, 50),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
          )),
    );
  }
}
