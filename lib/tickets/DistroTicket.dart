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
          color: Colors.grey[850],
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(height: 10.0,),
                CircleAvatar(
                  backgroundImage: AssetImage(distro.imagePath),
                  backgroundColor: Colors.grey[850],
                  maxRadius: 20.0,
                  minRadius: 16.0,
                ),
                SizedBox(width: 60.0,),
                Column(
                  children: [
                    Text(
                      distro.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(distro.littleInfo,style: TextStyle(color: Colors.white),),
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
