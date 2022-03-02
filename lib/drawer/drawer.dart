import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Data.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 155,
            width: MediaQuery.of(context).size.width,
            color: cyan,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Avatar.png'),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('John Doe',
                  style: TextStyle(fontSize: 24,
                  fontFamily: SemiBold, color: Colors.black,
                  ),
                  ),
                  Text('example@gmail.com',
                    style: TextStyle(fontSize: 12,
                      fontFamily: Regular, color: Colors.black,
                    ),
                  ),



                ],
              )
            ],
          ),
          ),

          SizedBox(
            height: 20,
          ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/Home.png'),

                  SizedBox(
                    width: 10,
                  ),
                  Text('Home',
                    style: TextStyle(fontSize: 16,
                      fontFamily: Regular, color: darkgrey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 22,
              ),

//My Favorites

              InkWell(
                child: Row(
                  children: [
                    Image.asset('assets/Favorites.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('My Favorites',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
                onTap: (){
                  Navigator.pushNamed(context, "MyFavorites");
                },
              ),
              SizedBox(
                height: 22,
              ),

//Register Your Business

              InkWell(
                child: Row(
                  children: [
                    Image.asset('assets/Register.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('Register Your Business',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
                onTap: (){
                  Navigator.pushNamed(context, "RegisterYourBusiness");
                },
              ),
              SizedBox(
                height: 22,
              ),


//Support & Emergency
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "SupportEmergency");
                },
                child: Row(
                  children: [
                    Image.asset('assets/Support.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('Support & Emergency',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),



              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "settings");
                },
                child: Row(
                  children: [
                    Image.asset('assets/settings.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('settings',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),

//Request for Advertising

              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "RequestForAdvertising");
                  },
                child: Row(
                  children: [
                    Image.asset('assets/Request.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('Request for Advertising',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),


//Tell a Friend
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "TellAFriend");
                },
                child: Row(
                  children: [
                    Image.asset('assets/addFriend.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('Tell a Friend',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),


//Logout
              InkWell(
                child: Row(
                  children: [
                    Image.asset('assets/Logout.png'),

                    SizedBox(
                      width: 10,
                    ),
                    Text('Logout',
                      style: TextStyle(fontSize: 16,
                        fontFamily: Regular, color: darkgrey,
                      ),
                    )
                  ],
                ),
                onTap: (){
                 // SystemNavigator.pop();
                },
              ),
              SizedBox(
                height: 22,
              ),

            ],
          ),
        ) ],
      ),
    );
  }
}
