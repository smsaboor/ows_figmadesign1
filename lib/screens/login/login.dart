import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/bottomnav/screen_bottom_nav.dart';
import 'package:ows_figmadesign1/screens/bottomnav/widgets/custom_nav_bar.dart';
import 'package:ows_figmadesign1/screens/registeration/background.dart';
import 'package:ows_figmadesign1/screens/registeration/registration.dart';
import 'package:ows_figmadesign1/screens/route.dart';
import 'package:ows_figmadesign1/theme/meal_monkey_theme.dart';
import 'package:ows_figmadesign1/theme/meal_monkey_widgets.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  TextEditingController _controllerPassword = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Background(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA),
                        fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: _controllerEmail,
                    validator: (value) {
                      bool isValid = _isEmailValidate(_controllerEmail.text);
                      if (value!.isEmpty) {
                        return 'Enter Your Email';
                      } else if (!isValid) {
                        return 'Enter Valid Email';
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your password';
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                FFButtonWidget(
                  onPressed: () {
                    _login(context);
                  },
                  text: 'Login',
                  options: FFButtonOptions(
                    width: 200,
                    height: 56,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Metrophobic',
                      color: Colors.white,
                    ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 50,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: () => {
                     Navigator.pushReplacementNamed(context, RouteGenerator.signUp)
                    },
                    child: Text(
                      "Don't Have an Account? Sign up",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2661FA)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ScreenBottomNav()));
    }

  }

  bool _isEmailValidate(String txt) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(txt);
  }
}
// import 'package:ows_figmadesign1/screens/login/widget/textfield_widget.dart';
// import 'package:ows_figmadesign1/screens/registeration/registration.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController _controllerEmail = TextEditingController();
//   TextEditingController _controllerPassword = TextEditingController();
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _controllerPassword.dispose();
//     _controllerEmail.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           SizedBox(height: MediaQuery.of(context).size.height * .2),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Text(
//               'Login',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red),
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * .1,
//           ),
//           TextFieldWidget(
//             label: 'Your Email/Mobile No',
//             text: '',
//             controller: _controllerEmail,
//             obscure: false,
//             onChanged: (txt) => _controllerEmail.text = txt,
//           ),
//           const SizedBox(height: 24),
//           TextFieldWidget(
//             label: 'Enter Password',
//             text: '',
//             controller: _controllerPassword,
//             obscure: false,
//             onChanged: (txt) => _controllerPassword.text = txt,
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * .1,
//           ),
//           Center(
//             child: SizedBox(
//                 width: MediaQuery.of(context).size.width * .6,
//                 height: MediaQuery.of(context).size.height * .06,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     onPressed: () {
//                     },
//                     child: Text(
//                       'Login',
//                       style: TextStyle(fontSize: 20),
//                     ))),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * .15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Don't have an account? ",style: TextStyle(color: Colors.black),),
//               TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (_) => RegistrationScreen()));
//                   },
//                   child: Text('Register Now',style: TextStyle(fontSize: 20),))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
