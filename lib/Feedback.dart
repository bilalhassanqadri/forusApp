import 'package:flutter/material.dart';

import 'Data.dart';
class Feedback0 extends StatefulWidget {
  const Feedback0({Key? key}) : super(key: key);

  @override
  _Feedback0State createState() => _Feedback0State();
}
final email = TextEditingController();
class _Feedback0State extends State<Feedback0> {
  @override
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;

  Widget build(BuildContext context) {
    final maxLines = 5;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Feedback',
        style: TextStyle(
           fontWeight: FontWeight.w700,
          fontSize: 24,
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(
                     // fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(06),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextFormField(
                  cursorColor: Colors.white,
                  controller: email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
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
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      fontSize: 18,),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: TextStyle(
                    // fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(

              height: maxLines * 32.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                maxLines: maxLines,
                decoration: InputDecoration(
                  hintText: 'Write message...!',
                  hintStyle: TextStyle(
                      fontSize: 14,

                      color: Colors.black.withOpacity(0.6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white
                ),
                cursorColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Rate Your Experience',
                  style: TextStyle(
                    // fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.star),
                onPressed: ()=>setState((){
                  _myColorOne=Colors.yellow;
                  _myColorTwo=Colors.grey;
                  _myColorThree=Colors.grey;
                  _myColorFour=Colors.grey;
                  _myColorFive=Colors.grey;
                }),
                color: _myColorOne,),
              IconButton(icon: Icon(Icons.star),
                onPressed: ()=>setState((){
                  _myColorOne=Colors.yellow;
                  _myColorTwo=Colors.yellow;
                  _myColorThree=Colors.grey;
                  _myColorFour=Colors.grey;
                  _myColorFive=Colors.grey;
                }),color: _myColorTwo,),
              IconButton(icon: Icon(Icons.star), onPressed: ()=>setState((){
                _myColorOne=Colors.yellow;
                _myColorTwo=Colors.yellow;
                _myColorThree=Colors.yellow;
                _myColorFour=Colors.grey;
                _myColorFive=Colors.grey;
              }),color: _myColorThree,),
              IconButton(icon: Icon(Icons.star), onPressed: ()=>setState((){
                _myColorOne=Colors.yellow;
                _myColorTwo=Colors.yellow;
                _myColorThree=Colors.yellow;
                _myColorFour=Colors.yellow;
                _myColorFive=Colors.grey;
              }),color: _myColorFour,),
              IconButton(icon: Icon(Icons.star), onPressed: ()=>setState((){
                _myColorOne=Colors.yellow;
                _myColorTwo=Colors.yellow;
                _myColorThree=Colors.yellow;
                _myColorFour=Colors.yellow;
                _myColorFive=Colors.yellow;
              }),color: _myColorFive,),
            ],

          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: cyan,
                onPressed: () {
                  //Navigator.pushNamed(context, 'PaymentsDetails');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Give Feedback",
                  style: TextStyle(

                      fontSize: 22,
                      color:
                      Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
