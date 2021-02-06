import 'package:distro/activity/RomList.dart';
import 'package:distro/activity/Settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DistroList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    DistroList(),
    RomList(),
    Settings()
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Distroware",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
          selectedItemColor: ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_to_queue),
                label: "Distros",
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
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }

}
