import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weathermyapp/models/url_launcher.dart';
import '../models/url_launcher.dart';

class Contact_pages extends StatefulWidget {
  const Contact_pages({super.key});

  @override
  State<Contact_pages> createState() => _Contact_pagesState();
}

class _Contact_pagesState extends State<Contact_pages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Url(
                  mypatformicon: Icons.facebook,
                  mypatformtitel: "facbook",
                  mypatformsubtitel: "flwing as",
                  ontaping: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) {},
                    //     ));
                  },
                ),

                // Url(
                //     mypatformicon: Ionicons.logo_youtube,
                //     mypatformtitel: "youtube",
                //     mypatformsubtitel: "subscribe"),
              ],
            ),
            Container(
              child: Text("moawiah"),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}

class _url {}
