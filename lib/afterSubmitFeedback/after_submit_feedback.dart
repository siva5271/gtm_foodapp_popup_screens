import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';

class AfterSubmitFeedBack extends StatelessWidget {
  const AfterSubmitFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 2,
        ),
        Image.asset('assets/images/Collecting clients feedback.png'),
        Text(
          'Your Feedback is in review',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Divider(
          thickness: 2,
        ),
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Feedback Type:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/Group 328.png')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Your Feedback:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'This is feedback description',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  )
                ],
              )
            ]),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/love.png'),
            Text(
              '   Thank You, We Love Your Review   ',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/love.png'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'VIEW MY FEEDBACK',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(171, 216, 212, 212)),
        )
      ],
    );
  }
}
