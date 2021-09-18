import 'dart:async';
import 'package:d_ecom/feature/auth/login/view/login_page.dart';
import 'package:d_ecom/feature/auth/registration/view/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    new Timer(Duration(seconds: 3), () {
      Get.offAll(LoginPage());
    }  );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
            child: Image.asset('assets/app_logo.png')
        ),
      ),
    );
  }
}
