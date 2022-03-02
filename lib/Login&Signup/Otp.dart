import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forus_app/Data.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}
class _OtpState extends State<Otp> {
  final GlobalKey<FormState> _homeKey = GlobalKey<FormState>(
      debugLabel: '_homeScreenkey');

  final otp1 = TextEditingController();
  final otp2 = TextEditingController();
  final otp3 = TextEditingController();
  final otp4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Verification Code',
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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  Center(child: Image.asset(
                    'assets/otp.png',)),
                  SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Verification Code ', style: TextStyle(fontSize: 24,
                          fontFamily: Medium,
                          color: Colors.black,),
                      ),
                      SizedBox(height: 13,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 30),
                        child: Text('Please check your messages for four-digit security code and enter it below', style: TextStyle(
                            fontSize: 14, fontFamily: Medium, color: grey),
                          textAlign: TextAlign.center,
                        ),),


                    ],
                  ),

                  SizedBox(height: 28,),

                ],
              ),
            ),
            Form(
                key: _homeKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 57,
                      width: 76,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,

                        cursorColor: cyan,
                        controller: otp1,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: cyan1,

                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide.none,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 57,
                      width: 76,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,

                        cursorColor: cyan,
                        controller: otp2,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: cyan1,

                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide.none,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 57,
                      width: 76,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,

                        cursorColor: cyan,
                        controller: otp3,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: cyan1,

                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide.none,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 57,
                      width: 76,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,

                        cursorColor: cyan,
                        controller: otp4,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: cyan1,

                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide.none,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10.0))),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                )),
            SizedBox(height: MediaQuery.of(context).size.height/6,),

            SizedBox(height: 10,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t received a code? "),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text("Send again",
                      style: TextStyle(color: cyan,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 57,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: RaisedButton(
                    child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 22,
                    fontFamily: Medium
                    ),),
                    onPressed: (){
                   /*   if(_homeKey.currentState!.validate()){
                        Navigator.pushNamed(context, "NewPassword");
                      }*/
                      Navigator.pushNamed(context, "NewPassword");
                    },
                    color: cyan,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}
