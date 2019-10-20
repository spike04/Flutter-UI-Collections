import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/models/Product.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_color.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_style.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onTap;

  const ProductItem({Key key, this.product, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 280.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 40.0,
              child: Text(
                product.title,
                style: ThemeStyle.productTitle,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 380.0,
              decoration: BoxDecoration(
                color: ThemeColor.secondaryColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Hero(
                tag: product.tag,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Image.asset(product.img),
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
