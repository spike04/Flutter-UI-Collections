import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/coffee_shop/detail_page.dart';

class CoffeePage extends StatefulWidget {
  @override
  _CoffeePageState createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.only(left: 16.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Welcome, Nadia',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/model.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(right: 45.0),
              child: Container(
                child: Text(
                  'Let\'s select the best tast for your next coffee break',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Taste of the week',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 17.0,
                      color: Color(0xFFCEC7C4),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 410.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _coffeeListCard(
                    'assets/images/starbucks.png',
                    'Caffee Misto',
                    'Coffeeshop',
                    'Our dark, rich espresso balanced with stramed milk and a light layer of foam',
                    '\$4.99',
                    false,
                  ),
                  _coffeeListCard(
                    'assets/images/starbucks.png',
                    'Caffee Latte',
                    'BrownHouse',
                    'Rich, full-boilded espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Explore nearby',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 17.0,
                      color: Color(0xFFCEC7C4),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildImage('assets/images/coffee.jpg'),
                  _buildImage('assets/images/coffee2.jpg'),
                  _buildImage('assets/images/coffee3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 300.0,
        width: 250.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 14.0, right: 14.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFDAB68C),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        Text(
                          shopName + '\'s',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          coffeeName,
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 15.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
              child: Container(
                width: 230.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFF473D3A),
                ),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
