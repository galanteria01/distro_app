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
    Distro(
        name: "Arch Linux",
        imagePath: "images/arch.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Arch Linux is a Linux distribution for computers with x86-64 processors. Arch Linux adheres to the KISS principle (\"Keep It Simple, Stupid\") and is focused on simplicity, modernity, pragmatism, user centrality, and versatility. In practice, this means the project attempts to have minimal distribution-specific changes, and therefore minimal breakage with updates, and be pragmatic over ideological design choices and focus on user-centrality rather than user-friendliness."
    ),
    Distro(
        name: "Manjaro Linux",
        imagePath: "images/manjaro.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Ubuntu Linux",
        imagePath: "images/ubuntu.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Gentoo Linux",
        imagePath: "images/gentoo.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Mint Linux",
        imagePath: "images/mint.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Fedora Linux",
        imagePath: "images/fedora.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Popos Linux",
        imagePath: "images/popos.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(name: "Red Hat Linux",
        imagePath: "images/redhat.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Garuda Linux",
        imagePath: "images/garuda.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Kali Linux",
        imagePath: "images/kali.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
    Distro(
        name: "Parrot Linux",
        imagePath: "images/parrot.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        scrollDirection: Axis.vertical,
        children: dummyDistro.map((distro) => DistroTicket(distro: distro,)).toList(),
      ),

    );
  }
}
