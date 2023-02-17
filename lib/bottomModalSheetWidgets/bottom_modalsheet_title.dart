import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomModalSheetTitle extends StatelessWidget {
  const BottomModalSheetTitle(
      {super.key, required this.title, this.fontColor = Colors.black});
  final String title;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 12, color: fontColor)),
    );
  }
}
