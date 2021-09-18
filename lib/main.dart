import 'package:d_ecom/feature/auth/login/view/login_page.dart';
import 'package:d_ecom/feature/auth/registration/view/registration_page.dart';
import 'package:d_ecom/feature/splash/splash_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashPage(),
    );
  }
}
