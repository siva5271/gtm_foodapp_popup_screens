import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

final kBottomModalSheetHeading = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(197, 30, 30, 30),
        fontSize: 10));

const kBottomModalSheetDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.vertical(top: Radius.circular(25)));

final kBadgeTopPosition =
    badges.BadgePosition.custom(top: -75, start: (Get.width / 2) - 30);

const kBottomModalSheetOverallPadding = EdgeInsets.all(20.0);

const kTableHeadingTextStyle =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

const kTableContentsTextStyle =
    TextStyle(fontSize: 10, fontWeight: FontWeight.w500);

const kAppBarBackIcon = Icon(
  Icons.keyboard_arrow_left_outlined,
  size: 40,
  color: Colors.black,
);
