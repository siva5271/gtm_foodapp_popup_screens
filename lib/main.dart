import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtm_foodapp_popup_screens/addNewAddress/add_new_address.dart';
import 'package:gtm_foodapp_popup_screens/afterSubmitFeedback/after_submit_feedback.dart';
import 'package:gtm_foodapp_popup_screens/availableCoupons/available_coupons.dart';
import 'package:gtm_foodapp_popup_screens/changePasswordVar2/change_password_var2.dart';
import 'package:gtm_foodapp_popup_screens/constants/routes.dart';
import 'package:gtm_foodapp_popup_screens/couponDetails/coupon_details.dart';
import 'package:gtm_foodapp_popup_screens/deviceLocationNotEnabled/device_location_not_enabled.dart';
import 'package:gtm_foodapp_popup_screens/discardAllItems/discard_all_items.dart';
import 'package:gtm_foodapp_popup_screens/foodDetails1/food_details1.dart';
import 'package:gtm_foodapp_popup_screens/foodDetails2/food_details2.dart';
import 'package:gtm_foodapp_popup_screens/howWeCalculateDeliveryCharge/how_we_calculate_delivery_charge.dart';
import 'package:gtm_foodapp_popup_screens/listenCorrect/listen_correct.dart';
import 'package:gtm_foodapp_popup_screens/listening/listening.dart';
import 'package:gtm_foodapp_popup_screens/loginOrSignup/login_signup.dart';
import 'package:gtm_foodapp_popup_screens/menu/menu.dart';
import 'package:gtm_foodapp_popup_screens/microphonePermissionNotEnabled/microphone_permission_not_enabled.dart';
import 'package:gtm_foodapp_popup_screens/placingYourOrder/placing_your_order.dart';
import 'package:gtm_foodapp_popup_screens/productListingInMart/product_listing_in_mart.dart';
import 'package:gtm_foodapp_popup_screens/repeatWithSameCombination/repeat_with_same_combination.dart';
import 'package:gtm_foodapp_popup_screens/selectOption/select_option.dart';
import 'package:gtm_foodapp_popup_screens/shopCategory/shop_category.dart';
import 'package:gtm_foodapp_popup_screens/sorryDidntHearThat/sorry_didnt_hear_that.dart';

import 'loginEdit/login_edit.dart';

void main() => runApp(GetMaterialApp(
      getPages: [
        GetPage(name: rProductListingInMart, page: () => ProductListingInMart())
      ],
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const LoginEdit(),
                      isScrollControlled: true),
                  child: const Text('Login Edit')),
              ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                      title: '', content: const ChangePasswordVar2()),
                  child: const Text('Change Password/variant 2')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(
                      const DeviceLocationNotEnabled(),
                      isScrollControlled: true),
                  child: const Text('Device Location Not enabled')),
              ElevatedButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => DiscardAllItems()),
                  child: const Text('Discard all items in your cart?')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const PlacingYourOrder(),
                      isScrollControlled: true),
                  child: const Text('Placing your order!')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const LoginOrSignUp(),
                      isScrollControlled: true),
                  child: const Text('Log in or Sign Up')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(
                      const HowWeCalculateDeliveryCharge(),
                      isScrollControlled: true),
                  child: const Text('How we calculate delivery charge')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const FoodDetails1(),
                      isScrollControlled: true),
                  child: const Text('Food details1')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const FoodDetails2(),
                      isScrollControlled: true),
                  child: const Text('Food details2')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(
                      const RepeatWithSameCombination(),
                      isScrollControlled: true),
                  child: const Text('Repeat with same combinations?')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const AvailableCoupons(),
                      isScrollControlled: true),
                  child: const Text('Available Coupons')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const CouponDetails(),
                      isScrollControlled: true),
                  child: const Text('Coupon Details')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const Listening(),
                      isScrollControlled: true),
                  child: const Text('Listening')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const SorryDidntHearThat(),
                      isScrollControlled: true),
                  child: const Text('Sorry Didnt hear that')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const ListenCorrect(),
                      isScrollControlled: true),
                  child: const Text('Listen Correect')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const AddNewAddress(),
                      isScrollControlled: true),
                  child: const Text('Add New Address')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const SelectOption(),
                      isScrollControlled: true),
                  child: const Text('Select Option')),
              ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                      title:
                          'Test Userset, Your feedback has been successfully submitted',
                      titleStyle: TextStyle(fontSize: 16),
                      titlePadding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 0),
                      content: const AfterSubmitFeedBack()),
                  child: const Text('After feedback submit')),
              ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                      title: '', content: const MicrophoneNotEnabled()),
                  child: const Text('Microphone Not Enabled')),
              ElevatedButton(
                  onPressed: () => showDialog(
                      context: context, builder: (context) => Menu()),
                  child: const Text('Menu')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(const ShopCategory(),
                      isScrollControlled: true),
                  child: const Text('Shop By Category')),
              ElevatedButton(
                  onPressed: () => Get.toNamed(rProductListingInMart),
                  child: const Text('Product Listing in mart')),
            ],
          ),
        ),
      ),
    );
  }
}
