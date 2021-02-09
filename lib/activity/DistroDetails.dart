import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DistroDetails extends StatefulWidget {
  @override
  _DistroDetailsState createState() => _DistroDetailsState();
}

class _DistroDetailsState extends State<DistroDetails> {
  String name;
  String imagePath;
  String hugeInfo;
  String installationMethodUrl;

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    name = data['name'];
    imagePath = data["imagePath"];
    hugeInfo = data["hugeInfo"];
    installationMethodUrl = data["installationMethodUrl"];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
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
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                   CircleAvatar(
                     backgroundImage: AssetImage(imagePath),
                     maxRadius: 28.0,
                     backgroundColor: Colors.grey[800],
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
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
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
                  onPressed: () => _launchInstallation(installationMethodUrl),
                  style: ButtonStyle(
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  _launchInstallation(String url) async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchDownload(String url) async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchWebsite(String url) async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
