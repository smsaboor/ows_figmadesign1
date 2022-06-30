import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ows_figmadesign1/screens/home/home_screen.dart';
import 'package:ows_figmadesign1/screens/route.dart';
import 'package:ows_figmadesign1/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final fontFamily = 'Poppins';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: Theme.of(context).iconTheme,
        ),
      ),
      home: WelcomePageWidget(),
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
