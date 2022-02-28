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
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Column(
              children: [
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
                      color: Colors.black, fontSize: 14 ,
                    fontFamily: Regular
                  ),
                ),
              ],
            ),
          ),
Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8,),
                      border: Border.all(color: cyan)
                  ),
                  child: RaisedButton(

                    child: Text('Log In',style: TextStyle(color: cyan,fontFamily: Medium,fontSize: 22),),
                    onPressed: (){
                      Navigator.pushNamed(context, "Login");
                    },
                    shape: RoundedRectangleBorder( borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),

                    ),
                    ),
                    color: Colors.white,
                    elevation: 0,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: RaisedButton(
                      child: Text('Sign Up',style: TextStyle(color: Colors.white,fontFamily: Medium,fontSize: 22),),
                      onPressed: (){
                        Navigator.pushNamed(context, "SignUp");
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
          ),
        ],
      ),
    );
  }
}
