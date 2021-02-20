import 'package:distro/tickets/RomTicket.dart';
import 'package:flutter/material.dart';
import 'package:distro/models/Rom.dart';

class RomList extends StatefulWidget {
  @override
  _RomListState createState() => _RomListState();
}

class _RomListState extends State<RomList> {
  
  List<Rom> dummyRoms = [
    Rom(
        name: "LineageOS"
    ),
    Rom(
        name: "PotatoProject"
    ),
    Rom(
        name: "AICP"
    ),
    Rom(
        name: "ShapeshiftOS"
    ),
    Rom(
        name: "Pixel Experience"
    ),
    Rom(
        name: "AOSP Extended"
    ),
    Rom(
        name: "Resurrection"
    ),
    Rom(
        name: "NitrogenOS"
    ),
    Rom(
        name: "DotOS"
    ),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: null,
        body: ListView(
          children: dummyRoms.map((rom) => RomTicket(rom: rom)).toList(),
        ),
      ),
    );
  }
}
