import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/custom_elevatedbutton.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/lighter_elevatedbutton.dart';

import '../bottomModalSheetWidgets/bottom_modalsheet_script.dart';

class DeviceLocationNotEnabled extends StatelessWidget {
  const DeviceLocationNotEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/location.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: BottomModalSheetTitle(
                  title: 'Device Location Not Enabled',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: BottomModalSheetScript(
                  script:
                      'Enable your device location for a better delivery experience',
                ),
              ),
              const LighterElevatedButton(
                title: 'Enable Location Permission',
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search Location Manually',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: cReddishColor,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    ]);
  }
}
