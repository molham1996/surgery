import 'package:flutter/material.dart';

class MyInputTheme {
  TextStyle _buildTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(
      color: color,
      fontSize: size,
    );
  }

//درجة انحناء او استدارة الحواف
  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: color,
        width: 1.0,
      ),
    );
  }

  InputDecorationTheme theme() => InputDecorationTheme(
        //تباعد محتوى الاداة من نصوص عن الحدود الخارجية للأداة
        contentPadding: EdgeInsets.all(16),
        //isDense : true,
        //حركة عودة النصوص بعد نقر الزر العائم
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //  floatingLabelBehavior: FloatingLabelBehavior.never,\\\
        constraints: BoxConstraints(maxWidth: 150),
        //enable and not error showing
        enabledBorder: _buildBorder(Colors.grey[600]!),
        //has error and focused
        focusedErrorBorder: _buildBorder(Colors.red),
        //default value if border are null
        border: _buildBorder(Colors.yellow),
        //enable andfocused
        focusedBorder: _buildBorder(Colors.blue),
        //disabled
        disabledBorder: _buildBorder(Color.fromARGB(255, 61, 60, 60)),

        //TextStyle

        suffixStyle: _buildTextStyle(Colors.black),
        counterStyle: _buildTextStyle(Colors.grey[400]!),
        floatingLabelStyle: _buildTextStyle(Colors.black),
        errorStyle: _buildTextStyle(Colors.red, size: 12.0),
        helperStyle: _buildTextStyle(Colors.black, size: 12.0),
        hintStyle: _buildTextStyle(Colors.grey),
        labelStyle: _buildTextStyle(Colors.black),
        prefixStyle: _buildTextStyle(Colors.black),
      );
}
