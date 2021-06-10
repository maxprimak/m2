import 'package:flutter/material.dart';
import 'package:m2/Pages/LVs/lv_site.dart';
import 'package:m2/Pages/menu.dart';
import 'package:m2/Services/user_profile.dart';
import '../Widgets/menu.dart' as bmenu;
import '../Services/global.dart' as global;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    User usertmp = User(name: "Peter");
    return Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SafeArea(
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Feedbacksy",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(usertmp.ppicture),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 60, 0, 20),
                    child: Text('Your Subjects',
                        style: TextStyle(fontSize: 20, fontFamily: 'Rubik')),
                  ),
                  RaisedButton(
                    onPressed: () {
                      global.currLV = global.adsLV;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Lv_profile()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VU ADS 1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text(
                              'SS2021',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite),
                                color: global.adsLV.liked,
                                onPressed: () {
                                  setState(() {
                                    if (global.adsLV.liked == Colors.grey) {
                                      global.adsLV.liked = Colors.red;
                                    } else {
                                      global.adsLV.liked = Colors.grey;
                                    }
                                  });
                                })
                          ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      global.currLV = global.dbLV;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Lv_profile()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VU Datenbanksysteme',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text(
                              'SS2021',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite),
                                color: global.dbLV.liked,
                                onPressed: () {
                                  setState(() {
                                    if (global.dbLV.liked == Colors.grey) {
                                      global.dbLV.liked = Colors.red;
                                    } else {
                                      global.dbLV.liked = Colors.grey;
                                    }
                                  });
                                })
                          ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      global.currLV = global.prLV;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Lv_profile()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VO Programmierung 1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text(
                              'SS2021',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite),
                                color: global.prLV.liked,
                                onPressed: () {
                                  setState(() {
                                    if (global.prLV.liked == Colors.grey) {
                                      global.prLV.liked = Colors.red;
                                    } else {
                                      global.prLV.liked = Colors.grey;
                                    }
                                  });
                                })
                          ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      global.currLV = global.inLV;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Lv_profile()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VU Interoperabilität',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text(
                              'SS2021',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite),
                                color: global.inLV.liked,
                                onPressed: () {
                                  setState(() {
                                    if (global.inLV.liked == Colors.grey) {
                                      global.inLV.liked = Colors.red;
                                    } else {
                                      global.inLV.liked = Colors.grey;
                                    }
                                  });
                                })
                          ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      global.currLV = global.biLV;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Lv_profile()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'VU Business Intelligence',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: <Widget>[
                            Text(
                              'SS2021',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                icon: Icon(Icons.favorite),
                                color: global.biLV.liked,
                                onPressed: () {
                                  setState(() {
                                    if (global.biLV.liked == Colors.grey) {
                                      global.biLV.liked = Colors.red;
                                    } else {
                                      global.biLV.liked = Colors.grey;
                                    }
                                  });
                                })
                          ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Container(
                      color: Colors.grey[400],
                      height: 1,
                    ),
                  ),
                  Center(
                    child: Text('Total subjects: 5 ',
                        style: TextStyle(fontSize: 16, fontFamily: 'Rubik')),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              title: Text("FAQ"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            switch (_currentIndex) {
              case 0:
                break;
              case 1:
                Navigator.pushNamed(context, '/profile');
                break;
              case 2:
                Navigator.pushNamed(context, '/faq');
                break;
            }
          },
        ));
  }
}
