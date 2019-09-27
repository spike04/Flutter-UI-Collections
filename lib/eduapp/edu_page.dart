import 'package:flutter/material.dart';

import 'resources_page.dart';

class EduPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ResourcesPage(),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(right: 16.0, bottom: 32.0),
          child: Container(
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Color(0xFFE1F5FF),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/edu_splash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'World\'s Best',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffE1F5FF),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Education Resources',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Anytime, Anywhere, Easy to Learn",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xffE1F5FF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
