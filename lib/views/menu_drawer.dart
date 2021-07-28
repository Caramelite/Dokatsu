import 'package:flutter/material.dart';
import 'CatBreed/breed_screen.dart';
import 'CatCategory/category_screen.dart';

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
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Hah3gmPWOBgyjne-W6PGgW0c5FFzpKZP4QXs9c2aBIYdYzuhfEvwz_EUfLgE0DZjGTAJR-0upI8aTA&usqp=CAU'),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen()),
              );
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
