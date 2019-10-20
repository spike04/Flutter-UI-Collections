import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/sonyshop/models/Product.dart';
import 'package:flutter_ui_collections/sonyshop/product_detail.dart';
import 'package:flutter_ui_collections/sonyshop/utils/theme_style.dart';
import 'package:flutter_ui_collections/sonyshop/widgets/product_item.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'What\'s New ? ',
            style: ThemeStyle.productInfo,
          ),
        ),
        SizedBox(height: 40.0),
        Container(
          height: 480.0,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              Product product = products[index];
              return Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: ProductItem(
                  product: product,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProductDetail(
                          product: product,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
