import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                //TODO: Add a dark/light toggle
              },
              child: Card(
                color: Colors.grey[850],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.computer,color: Colors.white,),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "Linux More",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //TODO: Add a dark/light toggle
              },
              child: Card(
                color: Colors.grey[850],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.phonelink_setup,color: Colors.white,),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "AOSP More",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //TODO: Add a dark/light toggle
              },
              child: Card(
                color: Colors.grey[850],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.invert_colors_on_rounded,color: Colors.white,),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "Switch Theme",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/developer');
              },
              child: Card(
                color: Colors.grey[850],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.verified_user,color: Colors.white,),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        "About Developer",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                    ],
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
