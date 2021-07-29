import 'package:dokatsu/constants/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_drawer.dart';

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

// SingleChildScrollView(
//         child: Column(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Details(),
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(top: 15, left: 15, right: 15),
//                     height: 150,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.blueGrey[300],
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: shadowList,
//                                 ),
//                                 margin: EdgeInsets.only(top: 50),
//                               ),
//                               Align(
//                                 child: Image.network(
//                                     'http://pngimg.com/uploads/cat/small/cat_PNG50529.png'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             height: MediaQuery.of(context).size.height,
//                             margin: EdgeInsets.only(top: 60, bottom: 20),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               boxShadow: shadowList,
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(20),
//                                 bottomRight: Radius.circular(20),
//                               ),
//                             ),
//                             child: Center(
//                               child: Text('Name sa Breed'),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
//                   },
//                   child: Container(
//                     height: 150,
//                     padding: EdgeInsets.only(top: 15, left: 15, right: 15),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.blueGrey[300],
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: shadowList,
//                                 ),
//                                 margin: EdgeInsets.only(top: 50),
//                               ),
//                               Align(
//                                   child: Image.network(
//                                       'http://pngimg.com/uploads/cat/small/cat_PNG50529.png'))
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             margin: EdgeInsets.only(top: 60, bottom: 20),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               boxShadow: shadowList,
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(20),
//                                 bottomRight: Radius.circular(20),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     padding: EdgeInsets.only(top: 15, left: 15, right: 15),
//                     height: 150,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.blueGrey[300],
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: shadowList,
//                                 ),
//                                 margin: EdgeInsets.only(top: 50),
//                               ),
//                               Align(
//                                   child: Image.network(
//                                       'http://pngimg.com/uploads/cat/small/cat_PNG50475.png'))
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             margin: EdgeInsets.only(top: 60, bottom: 20),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 boxShadow: shadowList,
//                                 borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(20),
//                                     bottomRight: Radius.circular(20))),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 100,
//             )
//           ],
//         ),
//       ),