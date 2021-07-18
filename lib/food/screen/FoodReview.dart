import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helmi_app/food/model/FoodModel.dart';
import 'package:helmi_app/food/utils/FoodColors.dart';
import 'package:helmi_app/food/utils/FoodConstant.dart';
import 'package:helmi_app/food/utils/FoodDataGenerator.dart';
import 'package:helmi_app/food/utils/FoodExtension.dart';
import 'package:helmi_app/food/utils/FoodString.dart';
import 'package:helmi_app/food/utils/FoodWidget.dart';
import 'package:helmi_app/food/utils/dotted_border.dart';

import '../utils/FoodColors.dart';
import 'FoodRestaurantsDescription.dart';

class FoodReview extends StatefulWidget {
  static String tag = '/FoodReview';

  @override
  FoodReviewState createState() => FoodReviewState();
}

class FoodReviewState extends State<FoodReview> {
  List<ReviewModel> mReviewList;

  @override
  void initState() {
    super.initState();
    mReviewList = addReviewData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(food_white);
    return Scaffold(
      backgroundColor: food_white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopBar(food_lbl_reviews),
            Container(
              margin: EdgeInsets.only(left: spacing_standard_new, right: spacing_standard_new),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mReviewList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Review(mReviewList[index], index);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
