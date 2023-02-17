import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_script.dart';
import 'package:gtm_foodapp_popup_screens/bottomModalSheetWidgets/bottom_modalsheet_title.dart';

class MicrophoneNotEnabled extends StatelessWidget {
  const MicrophoneNotEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/MicMuteFill.png'),
          BottomModalSheetTitle(title: 'Microphone Permission is not Enabled'),
          BottomModalSheetScript(
              script: 'Please grant us permission to access voice search'),
          Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mic,
                color: Colors.red,
              ),
              Text(
                'Grant Microphone Permission',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
