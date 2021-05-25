import 'package:flutter/material.dart';
import 'package:m2/Pages/LVs/lv_site.dart';
import 'package:m2/Pages/menu.dart';
import 'package:m2/Services/user_profile.dart';
import '../Widgets/menu.dart' as bmenu;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _favIconColorADS = Colors.grey;
  Color _favIconColorDB = Colors.grey;
  Color _favIconColorPR1 = Colors.grey;
  Color _favIconColorIn = Colors.grey;
  Color _favIconColorBus = Colors.grey;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    User usertmp = User(name: "Peter");
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Feedbacksy",
                      style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                color: Colors.grey[400],
                height: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
              child: Text('Your Subjects',
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat')),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Lv_profile()));
              },
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'ADS 1',
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
                          color: _favIconColorADS,
                          onPressed: () {
                            setState(() {
                              if (_favIconColorADS == Colors.grey) {
                                _favIconColorADS = Colors.red;
                              } else {
                                _favIconColorADS = Colors.grey;
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Lv_profile()));
              },
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Datenbanksysteme',
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
                          color: _favIconColorDB,
                          onPressed: () {
                            setState(() {
                              if (_favIconColorDB == Colors.grey) {
                                _favIconColorDB = Colors.red;
                              } else {
                                _favIconColorDB = Colors.grey;
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Lv_profile()));
              },
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Programmierung 1 (PR1)',
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
                          color: _favIconColorPR1,
                          onPressed: () {
                            setState(() {
                              if (_favIconColorPR1 == Colors.grey) {
                                _favIconColorPR1 = Colors.red;
                              } else {
                                _favIconColorPR1 = Colors.grey;
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Lv_profile()));
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
                          color: _favIconColorIn,
                          onPressed: () {
                            setState(() {
                              if (_favIconColorIn == Colors.grey) {
                                _favIconColorIn = Colors.red;
                              } else {
                                _favIconColorIn = Colors.grey;
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Lv_profile()));
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
                          color: _favIconColorBus,
                          onPressed: () {
                            setState(() {
                              if (_favIconColorBus == Colors.grey) {
                                _favIconColorBus = Colors.red;
                              } else {
                                _favIconColorBus = Colors.grey;
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
                  style: TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
            )
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
