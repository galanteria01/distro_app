import 'package:distro/models/Rom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RomTicket extends StatelessWidget {
  Rom rom;
  RomTicket({this.rom});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/distro',arguments: {
          "name": rom.name,
          "imagePath": rom.imagePath,
          "hugeInfo": rom.hugeInfo,
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
                  // backgroundImage: AssetImage(rom.imagePath),
                  backgroundColor: Colors.grey[850],
                  maxRadius: 20.0,
                  minRadius: 16.0,
                ),
                SizedBox(width: 60.0,),
                Column(
                  children: [
                    Text(
                      rom.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.amber
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    // Text(rom.littleInfo,style: TextStyle(color: Colors.white),),
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
