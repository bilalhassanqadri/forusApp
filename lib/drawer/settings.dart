import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data.dart';
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      height: 135,
                      width: 135,
                      child: Image.asset('assets/Avatar2.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 100, left: MediaQuery.of(context).size.width/4.1,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: cyan,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Image.asset('assets/Camera.png')),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height:30,
                ),

                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(06),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                      hintText: 'Change Name',
                      hintStyle: TextStyle(
                        fontSize: 16,fontFamily: Regular,
                        color: textfieldcolor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(06),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                      hintText: 'Zip code',
                      hintStyle: TextStyle(
                        fontSize: 16,fontFamily: Regular,
                        color: textfieldcolor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(06),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.20),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )),
                      hintText: 'City',
                      hintStyle: TextStyle(
                        fontSize: 16,fontFamily: Regular,
                        color: textfieldcolor,
                      ),
                    ),
                  ),
                ),
            Spacer(),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),


                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8,),
                      border: Border.all(color: cyan)
                  ),
                  child: RaisedButton(

                    child: Text('Chane Password',style: TextStyle(color: cyan,fontFamily: Medium,fontSize: 22),),
                    onPressed: (){
                      // Navigator.pushNamed(context, "Login");
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
                      child: Text('Update',style: TextStyle(color: Colors.white,fontFamily: Medium,fontSize: 22),),
                      onPressed: (){
                        //  Navigator.pushNamed(context, "SignUp");
                      },
                      color: cyan,
                    ),
                  ),
                ),

              ],
            ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
