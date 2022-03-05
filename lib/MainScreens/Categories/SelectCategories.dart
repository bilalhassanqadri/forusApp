import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Data.dart';
class SelectCategories extends StatefulWidget {
  const SelectCategories({Key? key}) : super(key: key);

  @override
  _SelectCategoriesState createState() => _SelectCategoriesState();
}
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final CarouselController _controller = CarouselController();
int _current = 1;
int childbar =0;
class _SelectCategoriesState extends State<SelectCategories> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
              ],
            )),
      ),
    ))
        .toList();
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

            Column(children: [
            SizedBox(height: 12,),
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : cyan)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ]),
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
