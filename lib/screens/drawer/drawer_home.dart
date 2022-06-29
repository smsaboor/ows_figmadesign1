// import 'package:flutter/material.dart';
// import 'package:ows_figmadesign1/screens/drawer/second_screen.dart';
// import 'multilevel_drawer.dart';
//
// class DrawerHome extends StatefulWidget {
//   @override
//   _DrawerHomeState createState() => _DrawerHomeState();
// }
//
// class _DrawerHomeState extends State<DrawerHome> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return  MultiLevelDrawer(
//         backgroundColor: Colors.white,
//         rippleColor: Colors.white,
//         subMenuBackgroundColor: Colors.grey.shade100,
//         divisionColor: Colors.grey,
//         header: Container(
//           height: size.height * 0.25,
//           child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     "assets/img_4.png",
//                     width: 100,
//                     height: 100,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text("RetroPortal Studio")
//                 ],
//               )),
//         ),
//         children: [
//           MLMenuItem(
//               leading: Icon(Icons.person),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "My Profile",
//               ),
//               subMenuItems: [
//                 MLSubmenu(
//                     onClick: () {
//                       Navigator.of(context).pop();
//                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
//                     },
//                     submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 5")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 6")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.settings),
//               trailing: Icon(Icons.arrow_right),
//               content: Text("Settings"),
//               onClick: () {},
//               subMenuItems: [MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")), MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))]),
//           MLMenuItem(
//             leading: Icon(Icons.notifications),
//             content: Text("Notifications"),
//             onClick: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
//             },
//           ),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "Payments",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "Payments",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "Payments",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 1",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 2",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 3",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 4",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 5",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {}),
//           MLMenuItem(
//               leading: Icon(Icons.payment),
//               trailing: Icon(Icons.arrow_right),
//               content: Text(
//                 "New Option 6",
//               ),
//               subMenuItems: [
//                 MLSubmenu(onClick: () {
//
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()));
//                 }, submenuContent: Text("Option 1")),
//
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
//                 MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
//               ],
//               onClick: () {
//               }),
//         ],
//       );
//   }
// }