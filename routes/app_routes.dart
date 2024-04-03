import 'package:flutter/material.dart';
import 'package:untitled8/presentation/signup_screen/sign_up_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen()
  };
}
