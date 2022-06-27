// import 'package:flutter/material.dart';
// import 'package:ows_figmadesign1/screens/login/widget/textfield_widget.dart';
//
// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({Key? key}) : super(key: key);
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }
//
// class _RegistrationScreenState extends State<RegistrationScreen> {
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
//     return Scaffold(
//       body: Column(
//
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200.0,
//             child: Text(
//               'Sign Up',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
//             ),
//             decoration: new BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.vertical(
//                   bottom: Radius.elliptical(
//                       MediaQuery.of(context).size.width, 130.0)),
//             ),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .1),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Text(
//               'Sign Up',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * .1,
//           ),
//           TextFieldWidget(
//             label: 'Your Mobile No',
//             text: '',
//             controller: _controllerMobile,
//             obscure: false,
//             onChanged: (txt) => _controllerMobile.text = txt,
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .02),
//           TextFieldWidget(
//             label: 'Enter Name',
//             text: '',
//             controller: _controllerName,
//             obscure: false,
//             onChanged: (txt) => _controllerName.text = txt,
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .02),
//           TextFieldWidget(
//             label: 'Enter Email',
//             text: '',
//             controller: _controllerEmail,
//             obscure: false,
//             onChanged: (txt) => _controllerEmail.text = txt,
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .02),
//           TextFieldWidget(
//             label: 'Enter Password',
//             text: '',
//             controller: _controllerPassword,
//             onChanged: (txt) => _controllerPassword.text = txt,
//             obscure: true,
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .05),
//           Center(
//             child: SizedBox(
//                 width: MediaQuery.of(context).size.width * .6,
//                 height: MediaQuery.of(context).size.height * .06,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     onPressed: () {
//                       Navigator.of(context).push(
//                           MaterialPageRoute(builder: (_) => Container()));
//                     },
//                     child: Text(
//                       'Login',
//                       style: TextStyle(fontSize: 20),
//                     ))),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .05),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("You have an account? ",style: TextStyle(color: Colors.black),),
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (_) => RegistrationScreen()));
//                   },
//                   child: Text('Sign Up',style: TextStyle(fontSize: 20),))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
