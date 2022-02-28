import 'package:flutter/material.dart';

import '../../Data.dart';
import '../../Data.dart';
class SupportEmergency extends StatefulWidget {
  const SupportEmergency({Key? key}) : super(key: key);

  @override
  _SupportEmergencyState createState() => _SupportEmergencyState();
}

class _SupportEmergencyState extends State<SupportEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Support & Emergency',
          style: TextStyle(
            fontSize: 20, color: Colors.black,
            fontFamily: SemiBold,
          ),

        ),
        leading:
        IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Feedback0');
                },
                child: Container(
                  height: 143,
                  width: 143,
                  decoration: BoxDecoration(
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(08),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/feedback.png',),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Feedback',
                      style: TextStyle(
                      fontSize: 16, color: Colors.black,
                      fontFamily: Regular,
                    ),)
                  ],
                ),


                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'ContactUs');
                },
                child: Container(
                  height: 143,
                  width: 143,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(08),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/contactUs.png',),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Contact Us',
                        style: TextStyle(
                          fontSize: 16, color: Colors.black,
                          fontFamily: Regular,
                        ),)
                    ],
                  ),


                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "PrivacyPolicy");
                },
                child: Container(
                  height: 143,
                  width: 143,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(08),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset('assets/privacy.png',),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Privacy Policy',
                        style: TextStyle(
                          fontSize: 16, color: Colors.black,
                          fontFamily: Regular,
                        ),)
                    ],
                  ),


                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Terms');
                },
                child: Container(
                  height: 143,
                  width: 143,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(08),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/compliant.png',),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text('Terms & Conditions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16, color: Colors.black,
                            fontFamily: Regular,
                          ),),
                      )
                    ],
                  ),


                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
