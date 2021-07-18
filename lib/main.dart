import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helmi_app/food/screen/FoodSignIn.dart';
import 'package:helmi_app/food/screen/FoodSignIn.dart';

import 'food/screen/FoodAddAddress.dart';
import 'food/screen/FoodAddressConfirmation.dart';
import 'food/screen/FoodBookCart.dart';
import 'food/screen/FoodBookDetail.dart';
import 'food/screen/FoodCoupon.dart';
import 'food/screen/FoodCreateAccount.dart';
import 'food/screen/FoodDashboard.dart';
import 'food/screen/FoodDeliveryInfo.dart';
import 'food/screen/FoodDescription.dart';
import 'food/screen/FoodFavourite.dart';
import 'food/screen/FoodGallery.dart';
import 'food/screen/FoodOrder.dart';
import 'food/screen/FoodPayment.dart';
import 'food/screen/FoodProfile.dart';
import 'food/screen/FoodRestaurantsDescription.dart';
import 'food/screen/FoodReview.dart';
import 'food/screen/FoodViewRestaurants.dart';
import 'food/screen/FoodWalkThrough.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FoodSignIn(),

    routes: <String, WidgetBuilder>{
        FoodAddAddress.tag: (BuildContext context) => FoodAddAddress(),
        FoodAddressConfirmation.tag: (BuildContext context) => FoodAddressConfirmation(),
      FoodBookCart.tag: (BuildContext context) => FoodBookCart(),
      FoodBookDetail.tag: (BuildContext context) => FoodBookDetail(),
      FoodCoupon.tag: (BuildContext context) => FoodCoupon(),
      FoodCreateAccount.tag: (BuildContext context) => FoodCreateAccount(),
      FoodDashboard.tag: (BuildContext context) => FoodDashboard(),
      FoodDeliveryInfo.tag: (BuildContext context) => FoodDeliveryInfo(),
      FoodDescription.tag: (BuildContext context) => FoodDescription(),
      FoodFavourite.tag: (BuildContext context) => FoodFavourite(),
      FoodGallery.tag: (BuildContext context) => FoodGallery(),
      FoodOrder.tag: (BuildContext context) => FoodOrder(),
      FoodPayment.tag: (BuildContext context) => FoodPayment(),
      FoodProfile.tag: (BuildContext context) => FoodProfile(),
      FoodRestaurantsDescription.tag: (BuildContext context) => FoodRestaurantsDescription(),
      FoodReview.tag: (BuildContext context) => FoodReview(),
      FoodSignIn.tag: (BuildContext context) => FoodSignIn(),
      FoodViewRestaurants.tag: (BuildContext context) => FoodViewRestaurants(),
      FoodWalkThrough.tag: (BuildContext context) => FoodWalkThrough(),}
    );
  }
}
