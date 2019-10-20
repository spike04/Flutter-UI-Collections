import 'package:flutter/material.dart';

import 'utils/theme_color.dart';
import 'widgets/footer_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/product_widget.dart';

class SonyListing extends StatefulWidget {
  @override
  _SonyListingState createState() => _SonyListingState();
}

class _SonyListingState extends State<SonyListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HeaderWidget(),
            ProductWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
