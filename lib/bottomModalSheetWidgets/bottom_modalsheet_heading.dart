import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/styles.dart';

class BotomModalSheetHeading extends StatelessWidget {
  const BotomModalSheetHeading(
      {super.key, required this.title, this.givenFontSize = 10});
  final String title;
  final double givenFontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          const Expanded(
              child: Divider(
            thickness: 2,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              title,
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(197, 30, 30, 30),
                      fontSize: givenFontSize)),
            ),
          ),
          const Expanded(
              child: Divider(
            thickness: 2,
          ))
        ],
      ),
    );
  }
}
