
import 'package:form_field_validator/form_field_validator.dart';
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

  final _formKey = GlobalKey<FormState>();
  final Email12 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FORGOT PASSWORD',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('FORGOT PASSWORD?',
                      style: TextStyle(
                          fontSize: 24, color: Colors.black,
                      fontFamily: Regular,
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Please enter your Email below to receive your password reset instructions.",
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.4),
                  fontFamily: Regular
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black,
                  fontFamily: Medium
                  ),
                ),
                SizedBox(height: 10,),
                // First textfield started

                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(06),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff908E8E).withOpacity(0.75),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: Email12,
                      validator: MultiValidator(
                          [
                            RequiredValidator(errorText: 'Required'),
                            EmailValidator(errorText: "Not a Valid Email"),
                          ]
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                            fontSize: 16,fontFamily: Regular,
                            color: Color(0xff908E8E)),
                      ),
                    ),
                  ),
                ),


                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 57,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      child: Text('Send',style: TextStyle(color: Colors.white,fontSize: 22,
                        fontFamily: Medium

                      ),),
                      onPressed: (){
                       /* if(_formKey.currentState!.validate()){
                          Navigator.pushNamed(context, "Otp");
                        }*/
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
