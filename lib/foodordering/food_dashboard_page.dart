import 'package:flutter/material.dart';
import 'package:flutter_ui_collections/foodordering/small_floating_button.dart';

import '../common.dart';
import 'categories.dart';

class FoodDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'What would you like to eat?',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none),
                      ),
                      Positioned(
                        top: 10.0,
                        right: 12.0,
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(2, 1),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find Food or Restaurant",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Categories(),
              SizedBox(height: 20.0),
              Text(
                "Popular Food",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8.0,
                          ),
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: red[50],
                                offset: Offset(3, 8),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/food_${(index + 1).toString()}.jpg",
                                width: 140.0,
                                height: 130.0,
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text("Some Food"),
                                  ),
                                  SmallButton(Icons.send),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 12.0,
                          right: 8.0,
                          child: SmallButton(Icons.favorite),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Customer's Choices",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8.0,
                          ),
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: red[50],
                                offset: Offset(3, 8),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/food_${(index + 1).toString()}.jpg",
                                width: 140.0,
                                height: 130.0,
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text("Some Food"),
                                  ),
                                  SmallButton(Icons.send),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 12.0,
                          right: 8.0,
                          child: SmallButton(Icons.favorite),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
