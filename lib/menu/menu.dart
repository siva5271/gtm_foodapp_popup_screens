import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/constants/colors.dart';
import 'package:badges/badges.dart' as badges;

final controller = ScrollController();

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: TextStyle(
                              color: cReddishColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          '30',
                          style: TextStyle(
                              color: cReddishColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                    Scrollbar(
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                            GenerateRow(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SuspendedButton()
          ],
        ),
      ),
    );
  }
}

class SuspendedButton extends StatelessWidget {
  const SuspendedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Close',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.close,
                color: Colors.black,
              )
            ],
          )),
    );
  }
}

class GenerateRow extends StatelessWidget {
  const GenerateRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cheese Puffs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '10',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
