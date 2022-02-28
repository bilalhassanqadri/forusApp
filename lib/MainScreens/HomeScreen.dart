import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forus_app/drawer/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Data.dart';
import 'SelectCard.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 01.8, keepPage: true,);
  final email = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int childbar =0;
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
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
        leading: IconButton(

          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu_outlined), color: Colors.black,
        ),
    ),
      drawer: drawer(),
      body: ListView(
                children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

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
                      activeStrokeWidth: 2,
                      activeDotScale: 1,
                      maxVisibleDots: 5,
                      radius: 10 ,
                      spacing: 10,
                      dotHeight: 10,
                      dotWidth: 10,
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
          Container(
            height: 400,
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: SelectCard(choice: choices[index]),
                  );
                }
                )
            ),
          ),
                  SizedBox(
                    height: 20,
                  ),
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
