import 'package:flutter/material.dart';

import 'Data.dart';
class ignoor extends StatefulWidget {
  const ignoor({Key? key}) : super(key: key);

  @override
  _ignoorState createState() => _ignoorState();
}

class _ignoorState extends State<ignoor> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
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
    );
  }
}
