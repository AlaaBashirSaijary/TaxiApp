import 'package:flutter/material.dart';

Widget textWidget({required String text,double fontSize = 12, FontWeight fontWeight = FontWeight.normal,Color color = Colors.deepPurple}){
  return Text(text,textDirection:TextDirection.rtl, style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color: color),);
}