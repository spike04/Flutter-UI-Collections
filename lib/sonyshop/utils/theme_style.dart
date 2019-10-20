import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_color.dart';

class ThemeStyle {
  static final TextStyle homeTitle = TextStyle(
    color: ThemeColor.fontColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle productInfo = TextStyle(
    color: ThemeColor.accentColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle productTitle = TextStyle(
    color: ThemeColor.fontColor,
    fontSize: 15,
  );

  static final TextStyle productDetailTitle = TextStyle(
    color: ThemeColor.fontColor,
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle productDetailPrice = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  static final TextStyle productDetailDescription = TextStyle(
    color: Colors.grey[700],
    height: 1.5,
  );

  static final TextStyle productLargeButton = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle footerTitle = TextStyle(
    color: ThemeColor.fontColor,
    fontSize: 14.0,
    height: 1.3,
  );
}
