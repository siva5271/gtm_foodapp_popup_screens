import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/icon_badge.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/custom_elevatedbutton.dart';
import 'package:gtm_foodapp_popup_screens/universalWidgets/custom_textfield.dart';
import 'package:badges/badges.dart' as badges;
import '../bottomModalSheetWidgets/bottom_modalsheet_heading.dart';

TextEditingController phonenumberTextEditingController =
    TextEditingController();

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      innerWidget: Wrap(children: [
        Container(
          decoration: kBottomModalSheetDecoration,
          child: Padding(
            padding: kBottomModalSheetOverallPadding,
            child: Column(
              children: [
                const BotomModalSheetHeading(
                  title: 'Log in or Sign up',
                ),
                //The widget of the phone number is to be used here
                CustomTextField(
                    hint: 'The phone number widget is to be used here',
                    controller: phonenumberTextEditingController),
                const CustomElevatedButton(title: 'Continue'),
                const SizedBox(
                  height: 30,
                ),
                const BottomModalSheetScript(
                    script: 'By continuing, you agree to our'),
                const BottomModalSheetScript(
                    script: 'Terms of Service Privacy Policy Content Policy')
              ],
            ),
          ),
        )
      ]),
    );
  }
}
