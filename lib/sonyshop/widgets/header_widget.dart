import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../utils/theme_color.dart';
import '../utils/theme_style.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 35,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "HeadPhones",
            style: ThemeStyle.homeTitle,
          ),
          CustomButton(
            color: ThemeColor.secondaryColor,
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            isNotify: true,
          ),
        ],
      ),
    );
  }
}
