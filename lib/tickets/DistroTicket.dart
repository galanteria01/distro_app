import 'package:distro/models/Distro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DistroTicket extends StatelessWidget {
  Distro distro;
  DistroTicket({this.distro});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/distro',arguments: {
          "name": distro.name,
          "imagePath": distro.imagePath,
          "hugeInfo": distro.hugeInfo,
        });
      },
      child: Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(height: 10.0,),
                CircleAvatar(
                  backgroundImage: AssetImage(distro.imagePath),
                  backgroundColor: Colors.white,
                  maxRadius: 24.0,
                ),
                SizedBox(width: 60.0,),
                Column(
                  children: [
                    Text(
                      distro.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(distro.littleInfo),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
