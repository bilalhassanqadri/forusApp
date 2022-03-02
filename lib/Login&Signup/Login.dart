
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../Data.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
final _formKey = GlobalKey<FormState>();
String Regular='Regular';
var formkey = GlobalKey<FormState>();
final EmailController1 = TextEditingController();
final PasswordController = TextEditingController();

final email = TextEditingController();
bool _isObscure = true;
class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Container(child: Image.asset('assets/Pic1.png')),
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
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
                        controller: EmailController1,
                        validator: MultiValidator(
                            [
                              RequiredValidator(errorText: 'Required'),
                              EmailValidator(errorText: "Not a Valid Email"),
                            ]
                        ),

                        //validator: (value) => EmailValidator.validate(value) ? null : "Please enter a valid email",
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
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                              fontSize: 16,fontFamily: Regular,
                              color: Color(0xff908E8E)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        controller: PasswordController,

                        obscureText: _isObscure,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          else if(value.length<8){
                            return 'Password should be 8 characters long';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
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
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'ForgotPassword');
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 14,
                        color: cyan,
                        fontFamily: Medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: cyan,
                  onPressed: () {
                    /*if(_formKey.currentState!.validate()){
                      Navigator.pushNamed(context, 'HomeScreen');
                    }*/
                    Navigator.pushNamed(context, 'HomeScreen');

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Login",
                    style: TextStyle(

                        fontSize: 18,
                        color:
                        Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
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

                    Text("OR",style: TextStyle(fontSize: 16,color: grey),),

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
         height: 30,
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
                      spreadRadius: 0,
                      blurRadius: 4,
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
           height: MediaQuery.of(context).size.height/9,
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't Have an Account? "),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "SignUp");
                },
                child: Text("SIGN UP",
                    style: TextStyle(color: cyan,fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    )
    );
  }
}
