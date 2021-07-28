import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:katsuu/constants/controller_constants.dart';
import 'package:katsuu/views/detail_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              color: Color(0xFFEBF1FF),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/Dokatsu.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Breed'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreedScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.category_rounded),
            title: Text('Category'),
            onTap: () {
              Get.to(Details());
              drawerController.closeDrawer();
            },
          ),
          ListTile(
            leading: Icon(Icons.how_to_vote),
            title: Text('Votes'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Images'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
