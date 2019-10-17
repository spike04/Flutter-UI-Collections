import 'package:flutter/material.dart';

import '../common.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (_, index) {
          return Container(
            height: 100.0,
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: red[50],
                        offset: Offset(2, 6),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/food_salad.png'),
                  ),
                ),
                SizedBox(height: 10.0),
                Text('Salad'),
              ],
            ),
          );
        },
      ),
    );
  }
}
