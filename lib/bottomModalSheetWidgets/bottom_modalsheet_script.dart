import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class BottomModalSheetScript extends StatelessWidget {
  const BottomModalSheetScript({
    super.key,
    required this.script,
    this.givenTextDecoration = TextDecoration.none,
  });
  final String script;
  final TextDecoration givenTextDecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      script,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: cGreyishColor,
              decoration: givenTextDecoration)),
    );
  }
}
