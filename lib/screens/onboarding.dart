import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/route.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Timer _timer;
  final _controller = PageController();

  int _currentPage = 0;

  final List<Map<String, String>> splashData = [
    {
      "title": "Satta Game",
      "subtitle":
          "Gratitude is the most heartwarming\nfeeling. Praise someone in the\neasiest way possible",
      "image": "assets/img.png"
    },
    {
      "title": "Color Game",
      "subtitle":
          "Browse kudos list. See what your\ncommunity is up to and\nget inspired",
      "image": "assets/colorgame.png"
    },
    {
      "title": "Spin Game",
      "subtitle":
          "Do your best in your day to day life\nand unlock achievements",
      "image": "assets/logo.png"
    },
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: <Widget>[
      Expanded(
        flex: 3,
        child: PageView.builder(
          controller: _controller,
          itemCount: splashData.length,
          itemBuilder: (BuildContext context, int index) {
            return backgroudImage(_currentPage);
          },
          onPageChanged: (value) => setState(() => _currentPage = value),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * .8,
        right: 0.0,
        left: 0.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                  (int index) => _buildDots(index: index),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteGenerator.homeScreen);
                    // _controller.nextPage(
                    //   duration: const Duration(milliseconds: 200),
                    //   curve: Curves.easeIn,
                    // );
                  },
                  child: Text(
                    _currentPage + 1 == splashData.length
                        ? 'Started'
                        : 'Started',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      )
    ]));
  }

  Widget backgroudImage(int currentP) {
    String image;
    if (currentP == 0) {
      image = 'assets/satta.png';
    } else if (currentP == 1) {
      image = 'assets/colorgame.png';
    } else {
      image = 'assets/spingame.png';
    }
    return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  /// change this to your  image directory
                  fit: BoxFit.cover,
                ),
              ),
          );
  }
}
