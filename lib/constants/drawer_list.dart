import 'package:flutter/material.dart';

class DrawerList {
  static const List list = [
    {
      'title': 'Home Index',
      'icon': Icons.format_list_numbered_outlined,
      'route': '/surahIndex',
    },
    {
      'title': 'Sales Person',
      'icon': Icons.list,
      'route': '/juzIndex',
    },
    {
      'title': 'Customers',
      'icon': Icons.bookmark_outline,
      'route': '/bookmarks',
    },
    {
      'title': 'Help Guide',
      'icon': Icons.help_outline,
      'route': '/help',
    },
    {
      'title': 'Introduction',
      'icon': Icons.info_outline,
      'route': '/',
    },
    {
      'title': 'Share App',
      'icon': Icons.share_outlined,
      'route': '/share',
    },

  ];
}
