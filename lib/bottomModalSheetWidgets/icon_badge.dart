import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:badges/badges.dart' as badges;

import '../constants/styles.dart';

class IconBadge extends StatelessWidget {
  const IconBadge({super.key, required this.innerWidget});
  final Widget innerWidget;
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: kBadgeTopPosition,
      badgeStyle: const badges.BadgeStyle(
          badgeColor: Colors.black, padding: EdgeInsets.all(0)),
      badgeContent: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
            size: 32,
          )),
      child: innerWidget,
    );
  }
}
