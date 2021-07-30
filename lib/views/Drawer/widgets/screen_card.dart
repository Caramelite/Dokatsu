import 'package:dokatsu/constants/controllers.dart';
import 'package:dokatsu/constants/enums.dart';
import 'package:flutter/material.dart';

class ScreenCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget scaffoldBody;
  final TileSelected tile;

  const ScreenCard(
    this.text,
    this.icon,
    this.scaffoldBody,
    this.tile,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        selected: drawerController.tileSelected.value == tile,
        selectedTileColor: Colors.grey[200],
        leading: Icon(icon),
        title: Text(text),
        onTap: () {
          drawerController.activeScaffoldBody.value = scaffoldBody;
          drawerController.tileSelected.value = tile;
          drawerController.closeDrawer();
        },
      ),
    );
  }
}
