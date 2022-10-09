import 'package:flutter/material.dart';
import './searchscreen.dart';
import 'contactpages.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arabia weather",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Search_Screen();
                  },
                ));
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("image/wetherimage.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.topCenter,
                child: Text("world weather"),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: MaterialButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) {
            //           return Contact_pages();
            //         },
            //       ));
            //     },
            //     child: Text("flowing"),
            //     color: Colors.amber,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
/*
Container(
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("image/wetherimage.jpg"),
          ),
        ),
      ),
 */
