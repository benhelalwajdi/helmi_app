import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helmi_app/food/utils/FoodConstant.dart';
import 'package:helmi_app/food/utils/FoodExtension.dart';
import 'package:helmi_app/food/utils/T10Colors.dart';
import 'package:helmi_app/food/utils/T10Strings.dart';
import 'package:helmi_app/food/utils/T10Widget.dart';

import 'FoodDashboard.dart';
import 'FoodSignUp.dart';

class FoodSignIn extends StatefulWidget {
  static String tag = '/FoodSignIn';

  @override
  T10SignInState createState() => T10SignInState();
}

class T10SignInState extends State<FoodSignIn> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(t10_white);
    return Scaffold(
      backgroundColor: t10_white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: t10_white,
          margin: EdgeInsets.only(left: spacing_large, right: spacing_large),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              text(theme10_lbl_welcome, fontFamily: fontBold, fontSize: textSizeXLarge),
              SizedBox(
                height: spacing_large,
              ),
              EditText(
                text: theme10_email,
                isPassword: false,
              ),
              SizedBox(
                height: spacing_standard_new,
              ),
              EditText(
                text: theme10_password,
                isSecure: true,
              ),
              SizedBox(
                height: spacing_xlarge,
              ),
              AppButton(
                onPressed: () {
                  UserViewModel.loadLoginUser();
                  //Navigator.pop(context);
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDashboard()));
                },
                textContent: theme10_lbl_sign_in,
              ),
              SizedBox(
                height: spacing_large,
              ),
              text(theme10_lbl_forget_pswd, textColor: t10_textColorSecondary, fontFamily: fontMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  text(theme10_lbl_dont_have_account, textColor: t10_textColorSecondary, fontFamily: fontMedium),
                  SizedBox(
                    width: spacing_control,
                  ),
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodSignUp()));
                  },
                    child: text(theme10_lbl_sign_up, fontFamily: fontMedium),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
