import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';

class DiscardAllItems extends StatelessWidget {
  const DiscardAllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          height: 75,
          width: double.infinity,
          child: Dialog(
            elevation: 0,
            alignment: Alignment.center,
            child: Center(
              child: Wrap(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Column(
                    children: [
                      const Text(
                        'Discard all the items in cart?',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomTextButton(
                            text: 'CANCEL',
                          ),
                          CustomTextButton(text: 'DISCARD')
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              text,
              style: const TextStyle(color: cLighterReddishColor),
            ),
          )),
    ]);
  }
}
