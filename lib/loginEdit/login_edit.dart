import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

import '../bottomModalSheetWidgets/bottom_modalsheet_heading.dart';
import '../bottomModalSheetWidgets/bottom_modalsheet_title.dart';
import '../universalWidgets/custom_elevatedbutton.dart';
import '../universalWidgets/custom_textfield.dart';

TextEditingController fullNameTextEditingController = TextEditingController();
TextEditingController phoneNumberTextEditingController =
    TextEditingController();

class LoginEdit extends StatelessWidget {
  const LoginEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        decoration: kBottomModalSheetDecoration,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BotomModalSheetHeading(
                title: 'EDIT PROFILE',
              ),
              const BottomModalSheetTitle(
                title: 'Full Name',
              ),
              CustomTextField(
                hint: 'User Full Name',
                controller: fullNameTextEditingController,
              ),
              const BottomModalSheetTitle(title: 'Phone Number'),
              //Replace the below widget with the phone number widget
              CustomTextField(
                  hint: 'Replace with the phone number widget here',
                  controller: phoneNumberTextEditingController),
              const CustomElevatedButton(
                title: 'SAVE',
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
