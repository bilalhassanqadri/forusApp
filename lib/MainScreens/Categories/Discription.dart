import 'package:flutter/material.dart';
import 'package:forus_app/Data.dart';
class Discription extends StatefulWidget {
  const Discription({Key? key}) : super(key: key);

  @override
  _DiscriptionState createState() => _DiscriptionState();
}

class _DiscriptionState extends State<Discription> {
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
                  color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/Rectangle.png',
                      fit: BoxFit.fill,
                    ),
                ),

             Padding(
               padding: const EdgeInsets.only(top: 30, left: 20),
               child: InkWell(
                 child: Container(

                     child: Icon(Icons.arrow_back, color: Colors.black,)),

               onTap: (){
                 Navigator.pop(context);
               }
               ),
             ),
                Positioned(
                  top: MediaQuery.of(context).size.height/2.1,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                      )
                    ),
                  ),
                )
              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 44),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Medicity Hospital',
                          style: TextStyle(
                            fontSize: 20, fontFamily: SemiBold
                          ),
                          ),
                        Icon(Icons.favorite_border, color: Colors.black,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('9 Beds available',
                        style: TextStyle(
                            fontSize: 14, fontFamily: Regular
                        ),
                      ),
                       Text('OTHER SERVICES AVAILABLE',
                        style: TextStyle(
                            fontSize: 14, fontFamily: Regular
                        ),
                      ),
                       Text('Vaccine',
                        style: TextStyle(
                            fontSize: 14, fontFamily: Regular
                        ),
                      ),
                      Text('Oxygen',
                        style: TextStyle(
                            fontSize: 14, fontFamily: Regular
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Text('Discription',
                        style: TextStyle(
                            fontSize: 16, fontFamily: Medium,
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                        style: TextStyle(
                            fontSize: 14, fontFamily: Regular
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Rate Us',
                        style: TextStyle(
                          fontSize: 16, fontFamily: Medium,
                        ),
                      ),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow),
                              Icon(Icons.star,color: Colors.yellow),
                              Icon(Icons.star,color: Colors.yellow),
                              Icon(Icons.star,color: Colors.yellow),
                              Icon(Icons.star,color: Colors.yellow),
                            ],
                          )

                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [

               InkWell(
                 child: Container(
                   height: 50,
                   width: MediaQuery.of(context).size.width/2.7,
                   decoration: BoxDecoration(
                     color: cyan,
                     borderRadius: BorderRadius.circular(6),
                   ),
                   child: Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.location_on, color: Colors.white,),
                         SizedBox(
                           width: 10,
                         ),
                         Text('Direction',
                           style: TextStyle(
                               fontSize: 18, fontFamily: Medium,
                               color: Colors.white
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 onTap: (){
                   Navigator.pushNamed(context, 'SelectLocation');
                 },
               ),
               Container(
                 height: 50,
                 width: MediaQuery.of(context).size.width/2.7,
                 decoration: BoxDecoration(
                   color: cyan,
                   borderRadius: BorderRadius.circular(6),
                 ),
                 child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.phone, color: Colors.white,),
                       SizedBox(
                         width: 10,
                       ),
                       Text('Phone',
                         style: TextStyle(
                             fontSize: 18, fontFamily: Medium,
                             color: Colors.white
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ],
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
