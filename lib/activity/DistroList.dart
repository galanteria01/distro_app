import 'package:distro/models/Distro.dart';
import 'package:distro/tickets/DistroTicket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DistroList extends StatefulWidget {
  @override
  _DistroListState createState() => _DistroListState();
}

class _DistroListState extends State<DistroList> {

  List<Distro> dummyDistro = [
    Distro(name: "Arch Linux",imagePath: "images/arch.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Manjaro Linux",imagePath: "images/manjaro.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Ubuntu Linux",imagePath: "images/ubuntu.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Gentoo Linux",imagePath: "images/gentoo.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Mint Linux",imagePath: "images/mint.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Fedora Linux",imagePath: "images/fedora.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Popos Linux",imagePath: "images/popos.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Red Hat Linux",imagePath: "images/redhat.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Garuda Linux",imagePath: "images/garuda.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Kali Linux",imagePath: "images/kali.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
    Distro(name: "Parrot Linux",imagePath: "images/parrot.png",littleInfo: "Best linux for hardcore user",hugeInfo: "Lorem ipsum"),
  ];

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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: dummyDistro.map((distro) => DistroTicket(distro: distro,)).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue),
              label: "Distros"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: "Roms",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
          ),
        ],
      ),
    );
  }
}
