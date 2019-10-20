import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/components/custom_button.dart';
import 'package:flutter_ui_collections/sonyshop/components/large_button.dart';
import 'package:flutter_ui_collections/sonyshop/models/Product.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_color.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_style.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    color: ThemeColor.secondaryColor,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomButton(
                    icon: Icon(
                      Icons.favorite,
                      color: ThemeColor.accentColor,
                    ),
                    color: ThemeColor.secondaryColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 70.0,
                    child: Container(
                      width: 200.0,
                      child: Hero(
                        tag: product.tag,
                        child: Image.asset(
                          product.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  product.isBattery
                      ? Positioned(
                          left: 20.0,
                          top: 1,
                          child: Container(
                            width: 80.0,
                            height: 40.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: ThemeColor.secondaryColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Battery",
                                  style: TextStyle(
                                    color: ThemeColor.fontColor,
                                  ),
                                ),
                                Text(
                                  "30h",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.only(
                  top: 20.0,
                  right: 20.0,
                  left: 20.0,
                ),
                decoration: BoxDecoration(
                  color: ThemeColor.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.title,
                      style: ThemeStyle.productDetailTitle,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "\$${product.price}",
                      style: ThemeStyle.productDetailPrice,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      product.description,
                      style: ThemeStyle.productDetailDescription,
                    ),
                    SizedBox(height: 40.0),
                    LargeButton(title: "Add to Cart"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
