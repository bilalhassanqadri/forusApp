import 'package:flutter/material.dart';
import 'package:forus_app/Data.dart';
class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}


final password1 = TextEditingController();
final password2 = TextEditingController();
final _formKey = GlobalKey<FormState>();
bool _isObscure = true;
bool _isObscure1 = true;
class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Reset Password',
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
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      Text('Recovery Password',
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
                  Text("Reset code was send to your Email. Please enter the code and create new password.",
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  // First textfield started

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
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
                          child: TextFormField(
                            obscureText: _isObscure,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.grey,
                            controller: password2,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              else if(value.length<8){
                                return 'Password should be 8 characters long';
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
                              hintText: 'Enter New Password',
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
                          child: TextFormField(
                            obscureText: _isObscure,
                            controller: password1,
                            keyboardType: TextInputType.text,

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
                              hintText: 'Confirm New Password',
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
                      ],
                    ),
                  ),


                  SizedBox(
                    height: MediaQuery.of(context).size.height/2.7
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: RaisedButton(
                        child: Text('Reset Password',style: TextStyle(color: Colors.white,fontSize: 20,
                        fontFamily: Medium
                        ),),
                        onPressed: () {
    /*  if(_formKey.currentState!.validate()){
                            Navigator.pushNamed(context, "Otp");
                          }*/

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
      ),
    );
  }
}
