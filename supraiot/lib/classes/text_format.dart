import 'package:flutter/material.dart';

class TextFormat {
  static Text formatRegular({
    required String text,
    TextAlign? align,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: textDecoration,
        color: color,
      ),
    );
  }

  static Text formatBold({
    required String text,
    TextAlign? align,
    double? fontSize,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontStyle: fontStyle,
        decoration: textDecoration,
        color: color,
      ),
    );
  }

  static Text formatItalic({
    required String text,
    TextAlign? align,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: FontStyle.italic,
        decoration: textDecoration,
        color: color,
      ),
    );
  }

  static Text formatUnderline({
    required String text,
    TextAlign? align,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: TextDecoration.underline,
        color: color,
      ),
    );
  }

  static Text formatColor({
    required String text,
    TextAlign? align,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    Color? color,
  }) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: textDecoration,
        color: color,
      ),
    );
  }
}
