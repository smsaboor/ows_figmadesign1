import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/constants/constants.dart';

class ScreenBottomNav extends StatefulWidget {
  @override
  _ScreenBottomState createState() => _ScreenBottomState();
}

class _ScreenBottomState extends State<ScreenBottomNav> {
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CKL_SELECTPAGE.elementAt(pageIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedItemColor: Colors.amber,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow), label: "Play Game"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_sharp),
                label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "More"),
          ],
        ));
  }
}
