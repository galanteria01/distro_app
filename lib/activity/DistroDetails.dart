import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DistroDetails extends StatefulWidget {
  @override
  _DistroDetailsState createState() => _DistroDetailsState();
}

class _DistroDetailsState extends State<DistroDetails> {
  String name;
  String imagePath;
  String hugeInfo;

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    name = data['name'];
    imagePath = data["imagePath"];
    hugeInfo = data["hugeInfo"];

    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
