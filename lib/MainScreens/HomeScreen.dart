import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forus_app/drawer/drawer.dart';

import '../Data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  int _current = 1;

  final controller = PageController(
    viewportFraction: 01.8,
    keepPage: true,
  );

  final email = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Image.asset('assets/Forus.png',
            height: 170,


          ),
        ),
        drawer: drawer(),
        body: ListView(children: [
          Column(children: [
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
                  border: Border.all(color: grey)),
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
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Catagories',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: Regular,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19, right: 19),
            child: Container(
              height: 500,
              child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 1,),

                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // What do i do here?
                        setState(() {});
                      },
                      child: InkWell(
                        child: Card(
                          elevation: 0,
                          child: Stack(
                            children: [
                              Container(
                                height: 225,
                                width:
                                    MediaQuery.of(context).size.width / 2.4,
                                child: Image.asset(
                                  "assets/img2.png",
                                  fit: BoxFit.fill,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(10)),
                              ),
                              Positioned(
                                top: 152,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 10.0,
                                          sigmaY: 10.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                            )
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.4,
                                          height: 37,
                                          child: Center(
                                            child: Text(
                                              'Restaurants',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: Medium,
                                              ),
                                            ),
                                          ),
                                        ))),
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.pushNamed(context, 'SelectCategories');
                        },
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]));
  }
}

class GridLayout {
  final String title;
  final IconData icon;

  GridLayout({required this.title, required this.icon});
}
