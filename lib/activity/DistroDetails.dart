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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    name,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                   CircleAvatar(
                     backgroundImage: AssetImage(imagePath),
                     maxRadius: 24.0,
                     backgroundColor: Colors.white60,
                   )
                ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                hugeInfo,
                style: TextStyle(
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: Text("Download"),
                  icon: Icon(Icons.download_rounded),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.web),
                    label: Text("Website")
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            TextButton.icon(
              label: Text("Installation method"),
              icon: Icon(Icons.add_to_queue),
              onPressed: () {},
              style: ButtonStyle(
              ),
            )
          ],
        ),
      ),
    );
  }
}
