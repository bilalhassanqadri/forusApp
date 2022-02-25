import 'package:flutter/material.dart';

import 'Feedback.dart';
import 'HomeScreen.dart';
import 'Login&Signup/ForgetPassword.dart';
import 'Login&Signup/Login.dart';
import 'Login&Signup/NewPassword.dart';
import 'Login&Signup/Otp.dart';
import 'Login&Signup/SignUp.dart';
import 'Login&Signup/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),

    routes: {
      'Login': (context) => Login(),
      'Feedback0': (context) => Feedback0(),
      'SignUp': (context) => SignUp(),
      'ForgotPassword': (context) => ForgotPassword(),
      'Otp': (context) => Otp(),
      'NewPassword': (context) => NewPassword(),
      'HomeScreen': (context) => HomeScreen(),
    }

    );
  }
}

