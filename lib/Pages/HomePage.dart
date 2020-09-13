import 'package:flutter/material.dart';
import 'package:manipal_gallery/Widgets/ImageHolder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  bool theme = false;
  HomePage({this.theme});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void themeChange() async {
    setState(() {
      widget.theme = widget.theme ? false : true;
    });
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool("theme", widget.theme ? false : true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: widget.theme
            ? ThemeData(brightness: Brightness.dark)
            : ThemeData(brightness: Brightness.light),
        home: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: widget.theme
                    ? [Colors.blue.shade800, Colors.grey]
                    : [Colors.black38, Colors.grey.shade700],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        themeChange();
                      },
                      child: widget.theme
                          ? Icon(Icons.brightness_5)
                          : Icon(
                              Icons.brightness_7,
                            ),
                    ),
                  ),
                ],
              ),
              body: Center(
                child: ListWheelScrollView(
                  itemExtent: 0.25 * MediaQuery.of(context).size.height,
                  diameterRatio: 1.3,
                  children: [
                    ImageHolder(
                      "images/AB2.jpeg",
                      "AB-2",
                    ),
                    ImageHolder(
                      "images/AB-5.jpg",
                      "AB-5",
                    ),
                    ImageHolder(
                      "images/Arbi_falls.jpg",
                      "Arbi Falls",
                    ),
                    ImageHolder(
                      "images/arbifalls.jpg",
                      "Arbi Falls",
                    ),
                    ImageHolder(
                      "images/Kaup_beach.jpg",
                      "Kaup Beach",
                    ),
                    ImageHolder(
                      "images/Kaup_beach_1.jpg",
                      "Kaup Beach",
                    ),
                    ImageHolder(
                      "images/hostel_block_17_view.jpeg",
                      "Block 17",
                    ),
                    ImageHolder(
                      "images/block17_view_2.jpeg",
                      "Block 17",
                    ),
                    ImageHolder(
                      "images/block_17_view_3.jpeg",
                      "Block 17",
                    ),
                    ImageHolder(
                      "images/Endpoint.jpg",
                      "End Point",
                    ),
                    ImageHolder(
                      "images/Hoode_Beach.jpg",
                      "Hoode Beach",
                    ),
                    ImageHolder(
                      "images/Malpe-beach-2.jpg",
                      "Malpe Beach",
                    ),
                    ImageHolder(
                      "images/Malpe-beach.jpg",
                      "Malpe Beach",
                    ),
                    ImageHolder(
                      "images/Manipal-lake.jpg",
                      "Manipal Lake",
                    ),
                    ImageHolder(
                      "images/Mattubeach2.jpg",
                      "Mattu Beach",
                    ),
                    ImageHolder(
                      "images/Mattubeach.jpg",
                      "Mattu Beach",
                    ),
                    ImageHolder(
                      "images/MIT.jpeg",
                      "MIT",
                    ),
                    ImageHolder(
                      "images/MIT_1.jpeg",
                      "MIT",
                    ),
                    ImageHolder(
                      "images/NLHRoad.jpeg",
                      "NLH Road",
                    ),
                    ImageHolder(
                      "images/StudentPlaza.JPG",
                      "Student Plaza",
                    ),
                    ImageHolder(
                      "images/StudentPlaza2.jpeg",
                      "Student Plaza",
                    ),
                    ImageHolder(
                      "images/TC.jpg",
                      "Tiger Circle",
                    ),
                    ImageHolder(
                      "images/TC_1.jpeg",
                      "Tiger Circle",
                    ),
                  ],
                ),
              )),
        ));
  }
}
