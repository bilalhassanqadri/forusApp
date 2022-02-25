import 'package:flutter/material.dart';

import '../Data.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(

                child: Image.asset('assets/Logo.png',

                )),
          ),
          Spacer(),
          Text(
            'Get Started',
            style: TextStyle(
              color: Colors.black, fontSize: 32,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(
            height: 05,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
            textAlign: TextAlign.center,

            style: TextStyle(
                color: Colors.black, fontSize: 16 ,
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(06,),
                border: Border.all(color: cyan)
            ),
            child: ClipRRect(
              child: RaisedButton(
                child: Text('Log In',style: TextStyle(color: cyan,fontWeight: FontWeight.w400,fontSize: 20),),
                onPressed: (){
                 Navigator.pushNamed(context, "Login");
                },
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            height: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(06),
              child: RaisedButton(
                child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                onPressed: (){
                 // Navigator.pushNamed(context, "Otp");
                },
                color: cyan,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
