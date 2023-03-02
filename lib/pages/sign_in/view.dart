import 'package:firebase_chat/pages/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<SigninController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget _logo() {
      print('aaaa${90.w}');
      return  Center(
        child: Column(
          children: [
            Image.asset('assets/images/ic_launcher.png',width: 90.w,height: 90.h,),
            SizedBox(
              height: 15,
            ),
            Text('Let\'s Chat', style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 25.sp
            )
            )
          ],
        ),
      );
    }

    Widget _buttomLogin() {
      return  Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *.2),
        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height *.1 / 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueAccent
        ),
        child: Center(
          child:  Text('Google Login', style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white.withOpacity(0.8)
          ),),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *.1 / 2,
            ),
            _logo(),
            SizedBox(
              height: MediaQuery.of(context).size.height *.3,
            ),
            Text('sign in with social networks', style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height *.1 / 3,
            ),
            _buttomLogin(),
          ],
        )
      ),
    );
  }
}
