import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: kAppBarBackIcon,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 2,
                ),
              ),
              Text(
                'CHANGE PASSWORD',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Expanded(
                child: Divider(
                  thickness: 2,
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          CustomWidget(
            title: 'Current Password',
          ),
          SizedBox(
            height: 15,
          ),
          CustomWidget(title: 'New Password'),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Image.asset('assets/images/Rectangle 301.png'),
                SizedBox(
                  width: 10,
                ),
                Text('Save password')
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomWidget(title: 'Confirm Password'),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: cLighterReddishColor),
                  onPressed: () {},
                  child: Text(
                    'Update Password',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 25,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}
