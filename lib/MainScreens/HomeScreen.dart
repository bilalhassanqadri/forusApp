import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Data.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<GridLayout> options = [
GridLayout(title: 'Home', icon: Icons.home),
GridLayout(title: 'Email', icon: Icons.email),
];
class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final email = TextEditingController();
  int childbar =0;






  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        4,
            (index) =>  Card(
              child: Container(


                decoration: BoxDecoration(
                  color: Colors.black,

                ),
                child: Image.asset('assets/SliderPic.png',
                  height: 200,
                  width: 428,
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
      body: ListView(

        children: [
          SizedBox(
            height: 10,
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
              height: 60,
              width: MediaQuery.of(context).size.width / 1.1,
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
            child: Text('Catagories',
              style: TextStyle(
                fontSize: 20,
                fontFamily: Regular,
                fontWeight: FontWeight.bold
              ),),
          ),
          SizedBox(
            height: 10,
          ),
        /*  */
          Padding(
            padding: const EdgeInsets.only(left: 20,),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 2 ,
                children: List.generate(50,(index){
                  return
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/img2.png',
                            ),

                          ),
                          Positioned(
                            top: 158,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: BackdropFilter(

                                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0,
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width/2.5,
                                      height: 37,
                                      child: Center(
                                        child: Text('Restaurants',
                                          style: TextStyle(
                                              fontSize: 20,
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
                    );

                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class GridLayout {
  final String title;
  final IconData icon;

  GridLayout({required this.title, required this.icon});
}