import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/registeration/background.dart';

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