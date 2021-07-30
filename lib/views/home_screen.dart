import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import './Drawer/menu_drawer.dart';
import '../constants/controllers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          key: drawerController.scaffoldKey,
          drawer: NavDrawer(),
          appBar: AppBar(
              title: Text('Dokatsu',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ))),
          body: drawerController.activeScaffoldBody.value,
        ));
  }
}
