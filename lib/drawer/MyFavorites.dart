import 'package:flutter/material.dart';
import 'package:forus_app/Data.dart';
class MyFavorites extends StatefulWidget {
  const MyFavorites({Key? key}) : super(key: key);

  @override
  _MyFavoritesState createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp, color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Your Favorites',
                style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: SemiBold,
                ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Img1.png'),
                            SizedBox(
                              width: 05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                Text('Medicity Hospital', style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Medium,

                                ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: Regular,
                                    color: Colors.black.withOpacity(0.5)

                                ),
                                ),
                                SizedBox(
                                  height: 20,
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
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                            ],
                          ),
                        )
                      ],

                    ),

                  ),
                  SizedBox(
                    height: 18,
                  ),



                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Img1.png'),
                            SizedBox(
                              width: 05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                Text('Medicity Hospital', style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Medium,

                                ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: Regular,
                                    color: Colors.black.withOpacity(0.5)

                                ),
                                ),
                                SizedBox(
                                  height: 20,
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
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                            ],
                          ),
                        )
                      ],

                    ),

                  ),
                  SizedBox(
                    height: 18,
                  ),



                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Img1.png'),
                            SizedBox(
                              width: 05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                Text('Medicity Hospital', style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Medium,

                                ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: Regular,
                                    color: Colors.black.withOpacity(0.5)

                                ),
                                ),
                                SizedBox(
                                  height: 20,
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
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                            ],
                          ),
                        )
                      ],

                    ),

                  ),
                  SizedBox(
                    height: 18,
                  ),



                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Img1.png'),
                            SizedBox(
                              width: 05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                Text('Medicity Hospital', style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Medium,

                                ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: Regular,
                                    color: Colors.black.withOpacity(0.5)

                                ),
                                ),
                                SizedBox(
                                  height: 20,
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
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                            ],
                          ),
                        )
                      ],

                    ),

                  ),
                  SizedBox(
                    height: 18,
                  ),



                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10,),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(1, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/Img1.png'),
                            SizedBox(
                              width: 05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),

                                Text('Medicity Hospital', style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: Medium,

                                ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text('Lorem ipsum dolor sit amet', style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: Regular,
                                    color: Colors.black.withOpacity(0.5)

                                ),
                                ),
                                SizedBox(
                                  height: 20,
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
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Column(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                            ],
                          ),
                        )
                      ],

                    ),

                  ),
                  SizedBox(
                    height: 18,
                  ),


                  






                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
