import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';

class ChangePasswordVar2 extends StatelessWidget {
  const ChangePasswordVar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/image1.jpg',
              height: 57,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Password Reset',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your password has been reset successfully',
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: cGreyishColor,
                      fontSize: 11)),
            ),
          )
        ],
      ),
    );
  }
}
