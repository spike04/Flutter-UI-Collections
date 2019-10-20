import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_style.dart';

import '../utils/theme_color.dart';

class LargeButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const LargeButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ThemeColor.accentColor,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          title,
          style: ThemeStyle.productLargeButton,
        ),
      ),
    );
  }
}
