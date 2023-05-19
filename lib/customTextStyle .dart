import 'package:flutter/material.dart';

class CustomTextStyle 
{
  static const Color primaryColor = Color(0xffFF0000);

 static var nameOfTextStyleSon = TextStyle(
      fontSize: 16,
      fontFamily: "Helvetica",
      color: Colors.black,
      fontWeight: FontWeight.w400);

  static var nameOfTextStyleFatherLight =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w200);

  static var nameOfTextStyleFatherMedium =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w500);

  static var nameOfTextStyleFather =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w600);

  static var textFormFieldBold =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w700);

  static var textFormFieldBlack =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w900);

static var nameOfTextStyleButton =
      nameOfTextStyleSon.copyWith(fontWeight: FontWeight.w600,color:Colors.white);

      

 static getSizedBox({double? width, double? height}) {
    return SizedBox(
      height: height,
      width: width,
    );
}
}
//to use :
//Text('Lorem Ipsum', style: CustomTextStyle.nameOfTextStyle,)