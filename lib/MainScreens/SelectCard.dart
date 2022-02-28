import 'dart:ui';

import 'package:flutter/material.dart';

import '../Data.dart';

class Choice {
  const Choice({required this.title, required this.image});
  final String title;

  final String image;
}
const List<Choice> choices = <Choice>[
  Choice(title: 'Restaurants', image: 'assets/img2.png'),
  Choice(title: 'Online Store', image: 'assets/img3.png'),
  Choice(title: 'Boutiques', image: 'assets/img4.png'),
  Choice(title: 'Technology', image: 'assets/img5.png'),
  Choice(title: 'Camera', image: 'assets/img6.png'),
  Choice(title: 'Setting', image: 'assets/img7.png'),
  Choice(title: 'Album', image: 'assets/img2.png'),
  Choice(title: 'WiFi', image: 'assets/img2.png'),
];


class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
    );
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Colors.orange
        ),
        child: Stack(
          children: [
            Container(
              child: Image.asset(choice.image,
                fit: BoxFit.fill,

              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
            Positioned(
              top: 162,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: BackdropFilter(

                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width/2.4,
                        height: 37,
                        child: Center(
                          child: Text(choice.title,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: Regular,
                                fontWeight: FontWeight.bold
                            ),),

                        ),

                      )
                  )
              ),
            ),
          ],

        ),
      ),
      onTap: (){
        Navigator.pushNamed(context, 'SelectCategories');
      },
    );
  }
}
