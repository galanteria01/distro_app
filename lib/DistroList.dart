import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DistroList extends StatefulWidget {
  @override
  _DistroListState createState() => _DistroListState();
}

class _DistroListState extends State<DistroList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Distros",
          style: TextStyle(
              color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
