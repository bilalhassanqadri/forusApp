import 'package:flutter/material.dart';

import '../Data.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('About Us',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [

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
            Spacer(),
            Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(
                        fontSize: 16, color: Colors.black,
                        fontFamily: Regular,
                      ),
                    ),
                    Text(
                      '1.0.1',
                      style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.5),
                        fontFamily: Regular,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 20,
          )
          ],
        ),
      ),
    );
  }
}
