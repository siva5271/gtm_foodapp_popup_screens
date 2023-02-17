import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gtm_foodapp_popup_screens/constants/styles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: kAppBarBackIcon,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'User Name',
                              style: TextStyle(fontSize: 24),
                            ),
                            Image.asset('assets/images/Man 7.png')
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 2,
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.favorite_border,
                              ),
                              Text('Favourites')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                  'assets/images/Maps Location Pin 2.png'),
                              Text('Address Book')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/Star 3.png'),
                              Text('Your Rating')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/Group (1).png'),
                              Text('Payment')
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CardElement(
                    imagePath: 'assets/images/Group (1).png',
                    note: 'My Orders',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Food Delivery Re Order.png',
                    note: 'How To Order',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Rating Star Give.png',
                    note: 'Complaint & Feedback',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Rating Booklet.png',
                    note: 'My Feedback',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Contact Us Faq.png',
                    note: 'FAQ',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Question Help Square.png',
                    note: 'Help',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Group (2).png',
                    note: 'Terms & Conditions',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Interface User Avatar 1.png',
                    note: 'About Us',
                  ),
                  CardElement(
                    imagePath: 'assets/images/Lock 1.png',
                    note: 'Change Password',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 38),
                    child: Text('Logout'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardElement extends StatelessWidget {
  const CardElement({
    super.key,
    required this.imagePath,
    required this.note,
  });
  final String imagePath;
  final String note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imagePath),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(note),
          )
        ],
      ),
    );
  }
}
