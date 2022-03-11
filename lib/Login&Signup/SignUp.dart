import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../Data.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}




var formkey = GlobalKey<FormState>();
final name = TextEditingController();
final ZipCode = TextEditingController();
final Password = TextEditingController();
final SignUpEmailController = TextEditingController();
bool _isObscure = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(child: Image.asset('assets/Signup.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        controller: name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              fontSize: 16,fontFamily: Regular,
                              color: Color(0xff908E8E)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        controller: SignUpEmailController,
                        validator: MultiValidator(
                            [
                              RequiredValidator(errorText: 'Required'),
                              EmailValidator(errorText: "Not a Valid Email"),
                            ]
                        ),
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
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                      child: TextFormField(
                        obscureText: _isObscure,
                        keyboardType: TextInputType.text,
                        controller: Password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          else if(value.length<8){
                            return 'Password should be 8 characters long';
                          }
                          return null;
                        },
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              fontSize: 16,fontFamily: Regular,
                              color: Color(0xff908E8E)),
                          suffixIcon: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                color: Color(0xffC4C4C4)
                                ,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        controller: ZipCode,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )),
                          hintText: 'Zip Code',
                          hintStyle: TextStyle(
                              fontSize: 16,fontFamily: Regular,
                              color: Color(0xff908E8E)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                      child:Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text("Select City",
                            style: TextStyle(
                                fontSize: 16,fontFamily: Regular,
                                color: Color(0xff908E8E)),
                            ),
                            items: <String>['A', 'B', 'C', 'D'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (items) {},
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),




            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: cyan,
                  onPressed: () {
                    /*  if(formkey.currentState!.validate()){
                      Navigator.pushNamed(context, 'HomeScreen');
                    }*/
                    //Navigator.pushNamed(context, 'SignUp');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Signup",
                    style: TextStyle(

                        fontSize: 22,fontFamily: Medium,
                        color:
                        Colors.white,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                          endIndent: 20,
                          color: Colors.black,
                        )
                    ),

                    Text("OR",style: TextStyle(fontSize: 20,color: grey),),

                    Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: 20,
                        )
                    ),
                  ]
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 05,
                ),
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('assets/Google.png'),
                ),
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('assets/facebook.png'),
                ),
                SizedBox(
                  width: 05,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "Login");
                  },
                  child: Text(" SIGN IN",
                    style: TextStyle(color: cyan,fontWeight: FontWeight.bold),
                  ),
                )
              ],
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
