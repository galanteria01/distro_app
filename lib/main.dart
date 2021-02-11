import 'package:distro/activity/RomDetails.dart';
import 'package:flutter/material.dart';

import 'activity/Developer.dart';
import 'activity/DistroDetails.dart';
import 'activity/DistroList.dart';
import 'activity/Home.dart';
import 'activity/Loading.dart';
import 'activity/Settings.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'OpenSans',
    ),
    initialRoute: '/loading',
    routes: {
      '/':(context) => Home(),
      '/loading':(context) => Loading(),
      '/distro':(context) => DistroDetails(),
      '/rom':(context) => RomDetails(),
      '/developer':(context) => Developer(),
      '/settings':(context) => Settings(),
    },
  ));
}

