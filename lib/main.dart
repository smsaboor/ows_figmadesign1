import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ows_figmadesign1/bloc/bottom_nav/bottom_nav_cubit.dart';
import 'package:ows_figmadesign1/bloc/theme/theme_cubit.dart';
import 'package:ows_figmadesign1/screens/intro_screen/intro_screen.dart';
import 'package:ows_figmadesign1/screens/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create:(BuildContext context)=> ThemeCubit()),
        BlocProvider<BottomNavCubit>(create: (BuildContext context)=>BottomNavCubit())
      ],
      child: BlocBuilder<ThemeCubit,ThemeState>(
        builder: ((context, ThemeState) =>  MaterialApp(
          title: 'Introduction screen',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.amber),
          home: OnboardingScreen(),
        )),
      )
    );
  }
}
