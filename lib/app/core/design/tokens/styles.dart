part of '../design.dart';

class StylesToken {
  StylesToken._internal();

  static const borderR4 = BorderRadius.all(Radius.circular(4));
  static const borderR8 = BorderRadius.all(Radius.circular(8));
  static const borderR12 = BorderRadius.all(Radius.circular(12));
  static const borderR16 = BorderRadius.all(Radius.circular(16));
  static const borderR20 = BorderRadius.all(Radius.circular(20));
  static const borderR24 = BorderRadius.all(Radius.circular(24));
  static const borderR25 = BorderRadius.all(Radius.circular(25));

  static const borderSW1 = BorderSide(
    width: 1.0,
    style: BorderStyle.solid,
  );
  static const borderSW2 = BorderSide(width: 2.0, style: BorderStyle.solid);
  static const borderSW8 = BorderSide(width: 8.0, style: BorderStyle.solid);
  static const borderSW24 = BorderSide(width: 24.0, style: BorderStyle.solid);
}
