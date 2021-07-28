import 'package:dokatsu/models/design.dart';
import 'package:flutter/material.dart';

import 'menu_drawer.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      size: 35,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                  'http://pngimg.com/uploads/cat/small/cat_PNG50529.png'),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Name sa Breed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
