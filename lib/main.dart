
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ows_figmadesign1/screens/onboarding.dart';
import 'package:ows_figmadesign1/screens/route.dart';

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
          color: Colors.amber,
          brightness: Brightness.light,
          elevation: 0,
          textTheme: Theme.of(context).textTheme,
          iconTheme: Theme.of(context).iconTheme,
        ),
      ),
      home: OnboardingScreen(),
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
