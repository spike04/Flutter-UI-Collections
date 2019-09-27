import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              stops: [0.4, 0.7, 0.5, 0.5],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Color(0xfffafdff),
                Color(0xfffafdff),
                Color(0xffE7FFFF),
                Color(0xffE7FFFF),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/edu_splash.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 80.0),
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30.0,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 16.0, left: 24.0, right: 24.0),
                height: 54.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                        right: 4.0,
                        top: 2.0,
                        bottom: 2.0,
                        left: 2.0,
                      ),
                      child: SizedBox(
                        width: 64.0,
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          color: Color(0xFFEEF1F3),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 32,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'All Subjects',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 160.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Container(
                          height: 16.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFFAFDFF),
                                blurRadius: 24.0,
                                spreadRadius: 10.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(24.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/edu_splash.jpg'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recently Viewed',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                height: 160.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Container(
                          height: 160.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFFAFDFF),
                                blurRadius: 24.0,
                                spreadRadius: 10.0,
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(24.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/edu_splash.jpg'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
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
