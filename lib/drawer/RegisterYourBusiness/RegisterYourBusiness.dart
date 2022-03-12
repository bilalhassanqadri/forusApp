import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:forus_app/Login&Signup/Login.dart';
import 'package:image_picker/image_picker.dart';

import '../../Data.dart';

class RegisterYourBusiness extends StatefulWidget {
  const RegisterYourBusiness({Key? key}) : super(key: key);

  @override
  _RegisterYourBusinessState createState() => _RegisterYourBusinessState();
}
final _formKey = GlobalKey<FormState>();
final CompanyName = TextEditingController();
final Adress = TextEditingController();
final Country = TextEditingController();
final EmailAdress1 = TextEditingController();
final PhoneNo = TextEditingController();
final Citycontroller = TextEditingController();
final Statecontroller = TextEditingController();
final Zipcode3 = TextEditingController();
final AddContent = TextEditingController();
final ContactPerson = TextEditingController();
final EmailAdress2 = TextEditingController();
final MobileNo = TextEditingController();
final ContactPerson2 = TextEditingController();
final EmailAdress4 = TextEditingController();
final MobileNo2 = TextEditingController();
final GoogleAccount = TextEditingController();
final Facebookurl = TextEditingController();

final picker = ImagePicker();
late Future<PickedFile?> pickedFile = Future.value(null);
class _RegisterYourBusinessState extends State<RegisterYourBusiness> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Registration',style: TextStyle(color: darkgrey),),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            )),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: CompanyName,
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
                    hintText: 'Company Number',
                    hintStyle: TextStyle(
                        fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: Adress,
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
                    hintText: 'Address',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: Country,
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
                    hintText: 'Country',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: EmailAdress1,
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
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: PhoneNo,
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
                    hintText: 'Phone',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
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
                    hintText: 'City',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: Statecontroller,
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
                    hintText: 'State',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: Zipcode3,
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
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: AddContent,
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
                    hintText: 'Add Content',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
              child: InkWell(
                onTap: ()async {
                  pickedFile = picker
                      .getImage(
                    source: ImageSource.gallery,
                  )
                      .whenComplete(() => {setState(() {})});
                },
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Add Image',
                        style: TextStyle(
                          fontSize: 16,fontFamily: "Regular",
                          color: textfieldcolor,
                        ),
                        ),
                        IconButton(onPressed: ()
                      async {
                pickedFile = picker
                      .getImage(
                source: ImageSource.gallery,
                )
                      .whenComplete(() => {setState(() {})});
                },
                            icon: Icon(Icons.cloud_upload))
                      ],
                    ),
                  )
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: ContactPerson,
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
                    hintText: 'Contact Person',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                 controller: EmailAdress2,
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
                      fontSize: 16,fontFamily: "Regular",
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
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  controller: MobileNo,
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
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      fontSize: 16,fontFamily: "Regular",
                      color: textfieldcolor,
                    ),
                  ),
                ),
              ),
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
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      controller: ContactPerson2,
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
                        hintText: 'Contact Person',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: "Regular",
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
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      controller: EmailAdress2,
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
                          fontSize: 16,fontFamily: "Regular",
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
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      controller: MobileNo2,
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
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: "Regular",
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
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      controller: GoogleAccount,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';

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
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: "Regular",
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
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.white,
                      controller: Facebookurl,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required';

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
                        hintText: 'Add facebook URL',
                        hintStyle: TextStyle(
                          fontSize: 16,fontFamily: "Regular",
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
                    if(_formKey.currentState!.validate()){
                      Navigator.pushNamed(context, 'YourBuisness');
                    }

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
