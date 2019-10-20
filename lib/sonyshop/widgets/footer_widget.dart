import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/components/custom_button.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_color.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_style.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          item(Icons.settings, "Custom Configuration"),
          item(Icons.star, "Collection of Sony"),
        ],
      ),
    );
  }

  Widget item(IconData icon, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomButton(
          color: ThemeColor.secondaryColor,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          width: 106,
          child: Text(
            title,
            style: ThemeStyle.footerTitle,
          ),
        ),
      ],
    );
  }
}
