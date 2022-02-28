import 'package:flutter/material.dart';

import '../../Data.dart';

class RegisterYourBusiness extends StatefulWidget {
  const RegisterYourBusiness({Key? key}) : super(key: key);

  @override
  _RegisterYourBusinessState createState() => _RegisterYourBusinessState();
}

class _RegisterYourBusinessState extends State<RegisterYourBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Company Information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: SemiBold,
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
                  hintText: 'Country',
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
                  hintText: 'Phone',
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
                  hintText: 'City',
                  hintStyle: TextStyle(
                    fontSize: 16,fontFamily: Regular,
                    color: textfieldcolor,
                  ),
                    suffixIcon: Icon(Icons.keyboard_arrow_down)
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
                  hintText: 'State',
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
                  hintText: 'Zip Code',
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
                  hintText: 'Add Content',
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
                  hintText: 'Add Image',
                  hintStyle: TextStyle(
                    fontSize: 16,fontFamily: Regular,
                    color: textfieldcolor,
                  ),
                suffixIcon: Icon(Icons.cloud_upload)
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Contact Information',
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

          SizedBox(
            height: 30,
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Marketing Information',
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
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Marketing Information',
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
                      hintStyle: TextStyle(
                        fontSize: 16,fontFamily: Regular,
                        color: textfieldcolor,
                      ),
                      hintText: 'Add Google Account',
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
                      hintText: 'Add facebook URL',
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
                   Navigator.pushNamed(context, 'YourBuisness');
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
        ],
      ),
    );
  }
}
