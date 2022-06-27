import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ows_figmadesign1/screens/home/home_screen.dart';
import 'package:ows_figmadesign1/screens/intro_screen/widgets/page_decoration.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  _IntroScreenState({Key? key});

  final introKey = GlobalKey<IntroductionScreenState>();
  int index = 0;
  String game = 'Color Game';

  void _selectGame(context, int index) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      isBottomSafeArea: true,
      globalFooter: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: RaisedButton(
            onPressed: () {
              print('...................${introKey.currentState?.controller}');
              _selectGame(context, index);
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: size.width * 0.6,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: new LinearGradient(colors: [
                    Color.fromARGB(255, 255, 136, 34),
                    Color.fromARGB(255, 255, 177, 41)
                  ])),
              padding: const EdgeInsets.all(0),
              child: Text(
                "Started",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          useRowInLandscape: true,
          title: "",
          body: '',
          decoration: pageDecoration.copyWith(
            bodyFlex: 0,
            imageFlex: 1,
            bodyAlignment: Alignment.topCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: buildImage('splash-bg.png'),
          reverse: true,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: buildImage('spingame.png'),
          reverse: true,
          decoration: pageDecoration.copyWith(
            bodyFlex: 1,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
        ),
        PageViewModel(
          title: "",
          body: '',
          decoration: pageDecoration.copyWith(
            bodyFlex: 1,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: buildImage('img.png'),
          reverse: true,
        ),
      ],
      onDone: () => _selectGame(context, index),
      onChange: (value) => index = value,
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      showNextButton: false,
      showDoneButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      curve: Curves.bounceOut,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
