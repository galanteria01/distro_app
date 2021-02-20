import 'package:distro/models/DarkThemeProvider.dart';
import 'package:distro/models/Distro.dart';
import 'package:distro/tickets/DistroTicket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DistroList extends StatefulWidget {
  @override
  _DistroListState createState() => _DistroListState();
}

class _DistroListState extends State<DistroList> {

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  List<Distro> dummyDistro = [
    Distro(
        name: "Arch Linux",
        imagePath: "images/arch.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Arch Linux is a Linux distribution for computers with x86-64 processors. Arch Linux adheres to the KISS principle (\"Keep It Simple, Stupid\") and is focused on simplicity, modernity, pragmatism, user centrality, and versatility. In practice, this means the project attempts to have minimal distribution-specific changes, and therefore minimal breakage with updates, and be pragmatic over ideological design choices and focus on user-centrality rather than user-friendliness.",
        downloadUrl: "https://archlinux.org/download/",
        officialWebsite: "https://archlinux.org/"
    ),
    Distro(
        name: "Manjaro Linux",
        imagePath: "images/manjaro.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
    Distro(
        name: "Ubuntu Linux",
        imagePath: "images/ubuntu.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://ubuntu.com/download/desktop",
        officialWebsite: "https://ubuntu.com/"

    ),
    Distro(
        name: "Gentoo Linux",
        imagePath: "images/gentoo.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://www.gentoo.org/downloads/",
        officialWebsite: "https://www.gentoo.org/"
    ),
    Distro(
        name: "Mint Linux",
        imagePath: "images/mint.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://linuxmint.com/download.php",
        officialWebsite: "https://linuxmint.com/"
    ),
    Distro(
        name: "Fedora Linux",
        imagePath: "images/fedora.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://getfedora.org/en/workstation/download/",
        officialWebsite: "https://getfedora.org/"
    ),
    Distro(
        name: "Popos Linux",
        imagePath: "images/popos.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
    Distro(name: "Red Hat Linux",
        imagePath: "images/redhat.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
    Distro(
        name: "Garuda Linux",
        imagePath: "images/garuda.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
    Distro(
        name: "Kali Linux",
        imagePath: "images/kali.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
    Distro(
        name: "Parrot Linux",
        imagePath: "images/parrot.png",
        littleInfo: "Best linux for hardcore user",
        hugeInfo: "Lorem ipsum",
        downloadUrl: "https://manjaro.org/download/",
        officialWebsite: "https://manjaro.org/"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget child) {
          return Scaffold(
            // backgroundColor: Colors.grey[900],
            body: ListView(
              scrollDirection: Axis.vertical,
              children: dummyDistro.map((distro) => DistroTicket(distro: distro,)).toList(),
            ),
          );
        }
      ),
    );
  }
}
