import 'package:flutter/material.dart';

class MyHorizontalList extends StatefulWidget {
  const MyHorizontalList
      ({Key? key,
    required this.startColor,
    required this.endColor,
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage})
      : super(key: key);

final int startColor, endColor;
final String courseHeadline, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 26
      ),
      child:  Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],),
        ),
        child: Stack(children: [
          Positioned(
            top: 15,
            left: 11,
            child: Container(
              height: 39,
              decoration: BoxDecoration(
                color: const Color(0xFFAFABEE),
                borderRadius: BorderRadius.circular(36),
           ),
        ],)
      ),
    );
  }
}
