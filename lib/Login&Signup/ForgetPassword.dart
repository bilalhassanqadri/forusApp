import 'package:flutter/material.dart';

import '../Data.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  final GlobalKey<FormState> _homeKey =   GlobalKey<FormState>(debugLabel: '_homeScreenkey');


  final phonenumber = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FORGOT PASSWORD',
          style: TextStyle(
              fontSize: 20, color: Colors.black,
              fontFamily: Regular,
              fontWeight: FontWeight.w600
          ),

        ),
        leading:
        IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('FORGOT PASSWORD',
                      style: TextStyle(
                          fontSize: 25, color: Colors.black,
                      fontFamily: Regular,
                        fontWeight: FontWeight.w600
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Please enter your Email below to receive your password reset instructions.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4),
                  fontFamily: Regular
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 0),
                  child: Text(
                    'Email Address',
                    style: TextStyle(
                        fontSize: 18, color: Colors.black,
                    fontFamily: Medium
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                // First textfield started

                Container(
                  height: 57,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    cursorColor: cyan,
                    controller: phonenumber,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration:const  InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF9F9F9),

                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide.none,
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0))),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:  BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        hintText: 'Email Address'),
                  ),
                ),


                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 57,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      child: Text('Send',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                      onPressed: (){
                        Navigator.pushNamed(context, "Otp");
                      },
                      color: cyan,
                    ),
                  ),
                ),

              ],
            ),
          ),
          // First textfield ended


        ],
      ),
    );
  }
}
