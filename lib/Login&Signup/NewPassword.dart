import 'package:flutter/material.dart';
import 'package:forus_app/Data.dart';
class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}
final email = TextEditingController();
bool _isObscure = true;
class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Reset Password',
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
                    Text('Recovery Password',
                      style: TextStyle(
                          fontSize: 25, color: Colors.black,
                          fontFamily: Medium,
                          fontWeight: FontWeight.w600
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Reset code was send to your Email. Please enter the code and create new password.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4),
                      fontFamily: Medium
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
                SizedBox(height: 10,),
                // First textfield started

                Padding(
                  padding: const EdgeInsets.only( right: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(06),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: _isObscure,
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
                        hintText: 'Enter New Password',
                        hintStyle: TextStyle(
                          fontSize: 18, ),
                        suffixIcon: IconButton(
                            color: Colors.black,
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
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

                SizedBox(height: 10,),
                // First textfield started

                Padding(
                  padding: const EdgeInsets.only( right: 20),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(06),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: _isObscure,
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
                        hintText: 'Confirm New Password',
                        hintStyle: TextStyle(
                          fontSize: 18, ),
                        suffixIcon: IconButton(
                            color: Colors.black,
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
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
                        //Navigator.pushNamed(context, "Otp");
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
