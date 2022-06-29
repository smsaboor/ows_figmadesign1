import 'package:flutter/material.dart';
import 'package:ows_figmadesign1/screens/bottomnav/widgets/custom_container.dart';
import 'package:ows_figmadesign1/screens/play_screen/play_screen.dart';
import 'package:ows_figmadesign1/screens/tab_bar/tab_bar_view.dart';

const FONT_FAMILY = 'Poppins';
const TX_SWITH_THEME = 'Switch Theme';
const TX_PLAY_KING = 'Play king fast';
const TX_LOST_INTERNET = 'You lost your internet connection';
const TX_LOADING = 'Loading...';
const TX_CHECK_INTERNET = "You're offline. Please check your Internet.";
const TX_ONLINE = 'Back online';
const TX_OFFLINE = 'No connection';
const TX_WELCOME_OFFLINE = 'Welcome to offline';
const DURATION_SNACKBAR_2S = Duration(seconds: 2);

const TX_HOME_DEL = 'Home Delivery App';
const TX_INDIA_MART = 'India \nMart';
const TX_MART = 'Mart';

const TX_DRAWER_HOME = 'Home';
const TX_DRAWER_SETTING = 'Setting';
const TX_DRAWER_CART = 'Cart';
const TX_DRAWER_HELP = 'Help Guide';
const TX_DRAWER_INTRO = 'Introduction';

const TX_BUTON_BOOK_NOW = 'Book Now';
const TX_BUTON_SERVICES = 'Services';
const TX_BUTON_PROFILE = 'Setting';
const TX_HELP_TXT1 =
    "The application is available in Offline Mode. However, you will need internet connection first to load all the data.";
const TX_HELP_TXT2 =
    "Open any Sales, Customer of any location from index. . Press and hold any Sales or Customer for viewing a brief information about it.";
const TX_HELP_TXT3 =
    "It will re-open the introduction of app that you might have seen when opened the app for the first time";
const TX_HELP_TXT4 =
    "You can give your precious feedback and rate our app on Google play store.";
const TX_HELP_TXT5 =
    "If you see any mistake in context of this App please report at the following link: \n\nhttps://www.google.com";
const TX_HELP_TXT6 =
    "Code is available at the following link: \n\nhttps://github.com/mhm/kkklkl \n\nThe code is for learning purposes, it has proper LICENSE but you are not allowed to publish this app.";
const TX_HELP_TXT7 =
    "Name: S.M.Saboor \nEmail: smsab@gmail.com \nGitHub: @sms \nWebsite: fluttebeginners";

const TX_INTRO1 =
    "Home Delivery App\n\n\"We delivered the Courier at your Door\"\n";
const TX_INTRO2 =
    "With sleek & awesome User Interface to keep you in love with this amazing app.\n\nHope you will like our efforts\n";
const TX_INTRO3 =
    "Now with tracker you can find your delivery item location easily.\n\nWith Bookmark option you can access your favorite items.\n";
const TX_INTRO4 =
    "For the first time ever, we introduced a very unique experience for our users with 3D Drawer.\n\nCan't wait for your reviews :)\n";
const TX_SHARE_TEXT ="Download the latest no-Ads India Mart on Play store\n\n https://play.google.com/an \n\nShare More! It is Free :)";

final CKL_SELECTPAGE = [
  CustomTabBar(),
  PlayScreen(),
  CustomContainer(txt: 'My Wallet'),
  CustomContainer(txt: 'More'),
];
