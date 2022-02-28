import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Data.dart';
class SelectCategories extends StatefulWidget {
  const SelectCategories({Key? key}) : super(key: key);

  @override
  _SelectCategoriesState createState() => _SelectCategoriesState();
}
int childbar =0;
class _SelectCategoriesState extends State<SelectCategories> {
  final controller = PageController(viewportFraction: 0.8, keepPage: false,);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        4,
            (index) =>  Card(
          child: Container(
            width: 428,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,

            ),
            child: Image.asset('assets/SliderPic.png',
              fit: BoxFit.fill,
            ),

          ),
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Select Categories',
          style: TextStyle(
              fontSize: 20, color: Colors.black,
              fontFamily: Regular,
              fontWeight: FontWeight.w600
          ),

        ),
        leading:
        IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(

              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [

                    InkWell(
                      child:
                      childbar ==0?
                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Resturant', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: Colors.cyan),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color(0xff22CBA2).withOpacity(0.12)
                        ),
                      ):
                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Resturant', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: Colors.black),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          childbar =0;
                        });
                      },
                    ),

                    SizedBox(width: 10,),
                    InkWell(
                      child:
                      childbar ==1?
                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Hospital', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: cyan),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: cyan.withOpacity(0.12)
                        ),
                      ):

                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Hospital', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: Colors.black),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          childbar =1;
                        });
                      },
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child:
                      childbar ==2?
                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Hot Pizza', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: cyan),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: cyan.withOpacity(0.12),
                        ),
                      ):

                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Hot Pizza', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: Colors.black),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          childbar =2;
                        });
                      },
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child:
                      childbar ==3?
                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Church', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: cyan),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: cyan.withOpacity(0.12)
                        ),
                      ):

                      Container(
                        height: 32,
                        width: 110,
                        child: Center(child: Text('Church', style: TextStyle(
                            fontSize: 18,
                            fontFamily: Medium,
                            color: Colors.black),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.white
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          childbar =3;
                        });
                      },
                    ),
                    SizedBox(width: 10,),


                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16),
                  SizedBox(
                    height: 275,
                    child: PageView.builder(
                      controller: controller,
                      // itemCount: pages.length,
                      itemBuilder: (_, index) {
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                  SizedBox(height: 15.0),
                  SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: ScrollingDotsEffect(
                        activeDotColor: cyan,
                        activeStrokeWidth: 2.6,
                        activeDotScale: 1.3,
                        maxVisibleDots: 5,
                        radius: 8 ,
                        spacing: 10,
                        dotHeight: 12,
                        dotWidth: 12,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(08),
                    border: Border.all(
                        color: grey
                    )
                ),
                child: TextFormField(
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
                      hintText: 'Search here',
                      hintStyle: TextStyle(
                        fontSize: 18,

                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.grey,)
                  ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Explore',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: Regular,
                    fontWeight: FontWeight.bold
                ),),
            ),



            childbar ==0? Container(
              height: 400,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "Discription");
                      },
                      child: Container(
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
                                        fontFamily: Medium,
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
                                  Icon(Icons.favorite_border),
                                ],
                              ),
                            )
                          ],

                        ),

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),

                ],
              ),

            ):childbar==1?Container():childbar==2?Container(
              height: 400,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),

                ],
              ),

            ):childbar==3?Container(
              height: 400,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
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
                                      fontFamily: Medium,
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
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],

                      ),

                    ),
                  ),

                ],
              ),

            ):Container(),



            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
