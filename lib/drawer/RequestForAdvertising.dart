import 'package:flutter/material.dart';

import '../Data.dart';
class RequestForAdvertising extends StatefulWidget {
  const RequestForAdvertising({Key? key}) : super(key: key);

  @override
  _RequestForAdvertisingState createState() => _RequestForAdvertisingState();
}

class _RequestForAdvertisingState extends State<RequestForAdvertising> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Advertising Request',
          style: TextStyle(
              fontFamily: SemiBold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back, color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            Center(
              child: Text(
                'Please Fill The Requirmentts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: Regular,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Contact Information',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: SemiBold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Contact Person',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Business Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: SemiBold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                        hintText: 'Company Name',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Company Number',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Advertising Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: SemiBold,
                    ),
                  ),
                ),


                SizedBox(
                  height: 30,
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
                        suffixIcon: Icon(Icons.calendar_today),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                        hintText: 'Select Date',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )),
                        hintText: 'Type',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        hintText: 'Duration',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: Regular,
                          color: textfieldcolor,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
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
                  //  Navigator.pushNamed(context, 'YourBuisness');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Register",
                    style: TextStyle(

                        fontSize: 22,
                        color:
                        Colors.white),
                  ),
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
