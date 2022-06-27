import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ows_figmadesign1/bloc/bottom_nav/bottom_nav_cubit.dart';
import 'package:ows_figmadesign1/constants/constants.dart';
import 'package:ows_figmadesign1/screens/drawer/drawer_home.dart';
import 'package:ows_figmadesign1/screens/drawer/multilevel_drawer.dart';
import 'package:ows_figmadesign1/screens/tab_bar/tab_bar_view.dart';
import '../bottomnav/widgets/custom_app_bar.dart';
import '../bottomnav/widgets/custom_body.dart';
import '../bottomnav/widgets/custom_nav_bar.dart';

class ScreenBottomNav extends StatefulWidget {
  @override
  _ScreenBottomState createState() => _ScreenBottomState();
}

class _ScreenBottomState extends State<ScreenBottomNav> with TickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3,initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, stateBottomNav) {
        return Scaffold(
          body: CKL_SELECTPAGE.elementAt(stateBottomNav),
          bottomNavigationBar:
          CustomBottomNavBar(
              index: context.read<BottomNavCubit>().state,
              function: _getChangeBottomNav),
        );
      },
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}

