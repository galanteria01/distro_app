import 'package:flutter/material.dart';

import 'activity/Developer.dart';
import 'activity/DistroDetails.dart';
import 'activity/DistroList.dart';
import 'activity/Loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/':(context) => DistroList(),
      '/loading':(context) => Loading(),
      '/distro':(context) => DistroDetails(),
      '/developer':(context) => Developer(),
    },
  ));
}

