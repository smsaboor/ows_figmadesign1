import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/login/login.dart';
import 'package:ows_figmadesign1/screens/login/widget/textfield_widget.dart';

// class to draw the profile screen
import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/login/login.dart';
import 'package:ows_figmadesign1/screens/login/widget/textfield_widget.dart';
import 'package:ows_figmadesign1/screens/registeration/background.dart';
import 'package:ows_figmadesign1/screens/registeration/otp.dart';

import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: size.height * .2,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Verify OTP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            _boxBuilder(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxBuilder(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _box(context),
        _box(context),
        _box(context),
        _box(context),
      ],
    );
  }

  Widget _box(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2.5),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 14,
      width: MediaQuery.of(context).size.width / 8,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
            contentPadding: const EdgeInsets.all(20)),
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.blue, width: 1)),
    );
  }
}
//
// class Otp2Screen extends StatefulWidget {
//   const Otp2Screen({Key? key}) : super(key: key);
//
//   @override
//   _Otp2ScreenState createState() => _Otp2ScreenState();
// }
//
// class _Otp2ScreenState extends State<Otp2Screen> {
//   _Otp2ScreenState({Key? key});
//
//   TextEditingController _controllerMobile = TextEditingController();
//   TextEditingController _controllerPassword = TextEditingController();
//   TextEditingController _controllerName = TextEditingController();
//   TextEditingController _controllerEmail = TextEditingController();
//
//   @override
//   void dispose() {
//     _controllerEmail.dispose();
//     _controllerName.dispose();
//     _controllerPassword.dispose();
//     _controllerMobile.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0.0,
//           backgroundColor: Colors.red,
//         ),
//         body: Stack(
//           alignment: Alignment.topLeft,
//           children: [
//             CustomPaint(
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//               ),
//               painter: HeaderCurvedContainer(),
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(
//                     'Confirmation',
//                     style: TextStyle(
//                       fontSize: 30.0,
//                       letterSpacing: 1.5,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .2,
//                 ),
//                 Center(child: Text("Enter Eight Digit Code ",style: TextStyle(color: Colors.black,fontSize: 20),)),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .05,
//                 ),
//                 _boxBuilder(),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * .05,
//                 ),
//                 Center(
//                   child: SizedBox(
//                       width: MediaQuery.of(context).size.width * .6,
//                       height: MediaQuery.of(context).size.height * .06,
//                       child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(primary: Colors.red),
//                           onPressed: () {
//                           },
//                           child: Text(
//                             'Verify',
//                             style: TextStyle(fontSize: 20),
//                           ))),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _boxBuilder() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         _box(),
//         _box(),
//         _box(),
//         _box(),
//       ],
//     );
//   }
//
//   Widget _box() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
//       alignment: Alignment.center,
//       height:  MediaQuery.of(context).size.height/14,
//       width: MediaQuery.of(context).size.width/8,
//       child: TextField(
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         decoration: InputDecoration(
//             border: InputBorder.none,
//             counterText: '',
//             contentPadding: const EdgeInsets.all(20)
//         ),
//       ),
//       decoration: BoxDecoration(border: Border.all(color: Colors.blue,width: 2)),
//     );
//   }
// }
//
// // CustomPainter class to for the header curved-container
// class HeaderCurvedContainer extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = Colors.red;
//     Path path = Path()
//       ..relativeLineTo(0, 90)
//       ..quadraticBezierTo(size.width / 2, 170.0, size.width, 90)
//       ..relativeLineTo(0, -140)
//       ..close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
