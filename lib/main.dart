import 'package:flutter/material.dart';

import 'Developer.dart';
import 'DistroDetails.dart';
import 'DistroList.dart';
import 'Loading.dart';

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

