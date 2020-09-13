import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageHolder extends StatefulWidget {
  String name;

  ImageHolder(this.name, this.title);

  String title;

  @override
  _ImageHolderState createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            child: Image.asset(
              widget.name,
              width: MediaQuery.of(context).size.width - 8,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
