import 'package:flutter/material.dart';

import '../../Data.dart';
class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}
var formkey = GlobalKey<FormState>();
class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset('assets/Map.png',
                  fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: InkWell(
                      child: Container(

                          child: Icon(Icons.arrow_back_sharp, color: Colors.black,)),

                      onTap: (){
                        Navigator.pop(context);
                      }
                  ),
                ),
                Positioned(
                  left: 20, right: 20, top: 60,
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.1,

                    child: TextField(
                      textAlign: TextAlign.start,
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Enter address or zip code...',
                          hintStyle: TextStyle(
                            fontSize: 14, fontFamily: "Regular",
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.grey,)

                      ),),
                  ),
                ),
                Positioned(
                  left: 30,top: 125,
                  child: Container(
                    child: Text('Use current location',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: Medium,
                          color: cyan

                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height/1.1,
                  left: 20, right: 20,
                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: RaisedButton(
                      child: Text('Direction',style: TextStyle(color: Colors.white,fontFamily: Medium,fontSize: 22),),
                      onPressed: (){
                        //Navigator.pushNamed(context, "SignUp");
                      },
                      color: cyan,
                    ),
                  ),
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
