import 'package:flutter/material.dart';

import 'cookie_detail.dart';

class Cookies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.only(right: 16.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Cookie mint', '\$3.99',
                    'assets/images/cookiemint.jpg', false, false, context),
                _buildCard('Cookie cream', '\$5.99',
                    'assets/images/cookiecream.jpg', true, false, context),
                _buildCard('Cookie classic', '\$1.99',
                    'assets/images/cookieclassic.jpg', false, true, context),
                _buildCard('Cookie choco', '\$2.99',
                    'assets/images/cookiechoco.jpg', false, false, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool isAdded,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        bottom: 4.0,
        left: 4.0,
        right: 4.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CookieDetail(
                assetPath: imgPath,
                cookieprice: price,
                cookiename: name,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 90.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xFFCC8053),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (!isAdded) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 16.0,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 12.0,
                          color: Color(0xFFD17E50),
                        ),
                      ),
                    ],
                    if (isAdded) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 16.0,
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 12.0,
                          color: Color(0xFFD17E50),
                        ),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFFD17E50),
                        size: 16.0,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
