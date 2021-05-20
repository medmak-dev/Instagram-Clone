import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class TextCustom extends Text{
     TextCustom(String data ,{color:Colors.white,double spacing,textAlign:TextAlign.justify,fontWeight:FontWeight.normal,double scale:1.0,fontSize:20.0}) :
     super(
       data,
      textScaleFactor: scale,
      textAlign: textAlign,
  
      style: new TextStyle(
        color:color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: spacing,
       //  fontFamily: 'Mystical',
     ));
}

