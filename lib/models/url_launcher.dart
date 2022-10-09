import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url extends StatelessWidget {
  Url(
      {required this.mypatformicon,
      required this.mypatformtitel,
      required this.mypatformsubtitel,
      required this.ontaping});
  String? mypatformtitel;
  String? mypatformsubtitel;
  IconData? mypatformicon;
  Function()? ontaping;

  final Uri _url = Uri.parse('https://www.facebook.com/');
  final Uri _ur2 = Uri.parse('https://www.youtube.com/watch?v=HWOy7TwBRhw');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  // Future<void> _launchUrl2() async {
  //   if (!await launchUrl(_ur2)) {
  //     throw 'Could not launch $_ur2';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          GestureDetector(
            onTap: ontaping,
            child: Container(
              child: ListTile(
                leading: Icon(mypatformicon),
                title: Text("$mypatformtitel"),
                subtitle: Text("$mypatformsubtitel"),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: _launchUrl,
          //   child: Container(
          //     child: ListTile(
          //       leading: Icon(mypatformicon),
          //       title: Text("$mypatformtitel"),
          //       subtitle: Text("$mypatformsubtitel"),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}




/*
 GestureDetector(
      onTap: _launchUrl,
      child: Container(
        child: ListTile(
          leading: Icon(mypatformicon),
          title: Text("$mypatformtitel"),
          subtitle: Text("$mypatformsubtitel"),
        ),
      ),
    )
 */