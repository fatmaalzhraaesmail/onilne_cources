// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';





Widget defaultButton({
  double width = 270,
  double height = 46,
  Color sign = Colors.white,
  required Color color,
  required String text,
  bool isUpperCase = true,
}) =>
    Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(14)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: sign, fontSize: 20.0),
        ),
      ),
    );


Widget stackcomponent(String img, double _heighet, String? txt,
    String contenttxt, double containerwidth,BoxFit boxFit,double left,double bottom) {
  return Stack(
    children: [
      Container(
        height: _heighet,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset(
            img,
            // fit: BoxFit.fitHeight,
            fit: boxFit,
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: _heighet - 10,
        color: Color.fromARGB(95, 139, 12, 46),
      ),
      Positioned(
        top: 25,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: containerwidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    child: Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 30,
                )),
                Text(txt!,style: TextStyle(color: Colors.white),),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Container(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
          left: left,
          bottom: bottom,
          child: Text(
            contenttxt,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 35),
          ))
    ],
  );
}

Widget unit(String bgcolor, String title, String descrbition, double progress) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Row(
      children: [
        MaterialButton(
          height: 65,
          minWidth: 70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          color: HexColor(bgcolor),
          onPressed: () {},
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 35,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    // 'UNIT \u2081',
                    'UNIT $title',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Text(' 1',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),)
                ],
              ),
              Text(
                descrbition,
                style: TextStyle(color: Colors.black),
              ),
              // Color.fromARGB(95, 139, 12, 46)
              Container(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    color: HexColor(bgcolor),
                    backgroundColor: Colors.red[100],
                    value: progress,
                    minHeight: 5,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget generalexercises(
    String bgcolor, IconData? _icon, String text, Function ontap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,),
    child: MaterialButton(
      height: 50,
      minWidth: 140,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      color: HexColor(bgcolor),
      onPressed: () {
        ontap();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            _icon,
            // Icons.play_arrow,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(width: 5,),
          Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)
        ],
      ),
    ),
  );
}
