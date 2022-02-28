import 'package:flutter/material.dart';

import 'drawer/RequestForAdvertising.dart';
import 'drawer/Support & Emergency/ContactUs.dart';
import 'drawer/Support & Emergency/Feedback.dart';
import 'MainScreens/Categories/Discription.dart';
import 'MainScreens/Categories/SelectLocation.dart';
import 'MainScreens/HomeScreen.dart';
import 'Login&Signup/ForgetPassword.dart';
import 'Login&Signup/Login.dart';
import 'Login&Signup/NewPassword.dart';
import 'Login&Signup/Otp.dart';
import 'Login&Signup/SignUp.dart';
import 'Login&Signup/SplashScreen.dart';
import 'Login&Signup/WelcomeScreen.dart';
import 'MainScreens/Categories/SelectCategories.dart';
import 'drawer/MyFavorites.dart';
import 'drawer/RegisterYourBusiness/RegisterYourBusiness.dart';
import 'drawer/RegisterYourBusiness/YourBuisness.dart';
import 'drawer/Support & Emergency/PrivacyPolicy.dart';
import 'drawer/Support & Emergency/Support&Emergency.dart';
import 'drawer/Support & Emergency/Terms.dart';
import 'drawer/TellAFriend.dart';
import 'drawer/settings.dart';

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
      home: SplashScreen(),

    routes: {
      'Login': (context) => Login(),
      'Feedback0': (context) => Feedback0(),
      'SignUp': (context) => SignUp(),
      'ForgotPassword': (context) => ForgotPassword(),
      'Otp': (context) => Otp(),
      'NewPassword': (context) => NewPassword(),
      'HomeScreen': (context) => HomeScreen(),
      'WelcomeScreen': (context) => WelcomeScreen(),
      'SelectCategories': (context) => SelectCategories(),
      'Discription': (context) => Discription(),
      'SelectLocation': (context) => SelectLocation(),
      'MyFavorites': (context) => MyFavorites(),
      'RegisterYourBusiness': (context) => RegisterYourBusiness(),
      'YourBuisness': (context) => YourBuisness(),
   //   'NEXT': (context) => NEXT(),
      'settings': (context) => settings(),
      'SupportEmergency': (context) => SupportEmergency(),
      'ContactUs': (context) => ContactUs(),
      'PrivacyPolicy': (context) => PrivacyPolicy(),
      'Terms': (context) => Terms(),
      'RequestForAdvertising': (context) => RequestForAdvertising(),
      'TellAFriend': (context) => TellAFriend(),


    }

    );
  }
}

