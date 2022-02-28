import 'package:flutter/material.dart';

import '../Data.dart';
class TellAFriend extends StatefulWidget {
  const TellAFriend({Key? key}) : super(key: key);

  @override
  _TellAFriendState createState() => _TellAFriendState();
}

class _TellAFriendState extends State<TellAFriend> {
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
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(child: Container(child: Image.asset('assets/tell a friend.png'))),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text('Share it with your friends. Share code or given through social media platforms so they can also get benefits to celebrate their birthdays at their nearby restaurants with friends and family,', style: TextStyle(
                  fontFamily: Regular,
                  fontSize: 14,
                  color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff908E8E).withOpacity(0.75),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/whatsapp.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('WhatsApp',
                      style: TextStyle(
                          fontFamily: Regular,
                          fontSize: 14,
                          color: Colors.black
                      ),

                    ),
                  ],
                ),
              ),
              Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff908E8E).withOpacity(0.75),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/instagram.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Instagram',
                      style: TextStyle(
                          fontFamily: Regular,
                          fontSize: 14,
                          color: Colors.black
                      ),

                    ),
                  ],
                ),
              ),
              Container(
                height: 106,
                width: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff908E8E).withOpacity(0.75),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/twitter.png'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Twitter',
                      style: TextStyle(
                          fontFamily: Regular,
                          fontSize: 14,
                          color: Colors.black
                      ),

                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
