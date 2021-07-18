import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helmi_app/food/model/User.dart';
import 'package:helmi_app/food/utils/FoodConstant.dart';
import 'package:helmi_app/food/utils/FoodExtension.dart';
import 'package:helmi_app/food/utils/T10Colors.dart';
import 'package:helmi_app/food/utils/T10Strings.dart';
import 'package:helmi_app/food/utils/T10Widget.dart';
import 'package:http/http.dart' as http;
import 'FoodSignIn.dart';
import 'dart:convert';
class FoodSignUp extends StatefulWidget {
  static String tag = '/FoodSignUp';

  @override
  T10SignUpState createState() => T10SignUpState();
}

class T10SignUpState extends State<FoodSignUp> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(t10_white);
    return Scaffold(
      backgroundColor: t10_white,
      body: SafeArea(
        child: Container(
          color: t10_white,
          margin: EdgeInsets.only(left: spacing_large, right: spacing_large),
          child: Column(
            children: <Widget>[
              text(theme10_lbl_register, fontFamily: fontBold, fontSize: textSizeXLarge),
              SizedBox(
                height: spacing_large,
              ),
              EditText(
                text: theme10_first_name,
                isPassword: false,
              ),
              SizedBox(
                height: spacing_standard_new,
              ),
              EditText(
                text: theme10_last_name,
                isPassword: false,
              ),
              SizedBox(
                height: spacing_standard_new,
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
                height: spacing_standard_new,
              ),
              EditText(
                text: theme10_confirm_password,
                isSecure: true,
              ),
              SizedBox(
                height: spacing_xlarge,
              ),
              AppButton(
                onPressed: () {},
                textContent: theme10_lbl_register,
              ),
              SizedBox(
                height: spacing_large,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  text(theme10_lbl_already_have_account, textColor: t10_textColorSecondary, fontFamily: fontMedium),
                  SizedBox(
                    width: spacing_control,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FoodSignIn()));
                    },
                    child: text(theme10_lbl_sign_in, fontFamily: fontMedium),
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

class UserViewModel {
  static User user ;
  static Future loadLoginUser() async {
    var url ="https://im.pacificsalestrading.com/api/login";
    var json = '{"email": "benhelalwajdi@gmail.com", "password": "test", "device_name": "tss"}';
    await http.post(url, headers: {"Content-Type": "application/json","Content-type": "application/json"},body: json).then(
            (http.Response response) {
          final body = jsonDecode(response.body);
          print(body);
          User user = new User.fromJson(body);
          print(user.token);
            });
  }


}
