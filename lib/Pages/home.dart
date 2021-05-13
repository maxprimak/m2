import 'package:flutter/material.dart';
import 'package:m2/Pages/LVs/lv_site.dart';
import 'package:m2/Services/user_profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    User usertmp = User(name: "Peter");
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            onPressed: () {}),
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
                    CircleAvatar(
                      backgroundImage: NetworkImage(usertmp.ppicture),
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
                    Text(
                      'SS2021',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
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
                    Text(
                      'SS2021',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
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
                    Text(
                      'SS2021',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
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
                    Text(
                      'SS2021',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
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
                      'VU Business Intelligence I',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'SS2021',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
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
                  style: TextStyle(fontSize: 13, fontFamily: 'Montserrat')),
            )
          ],
        ));
  }
}
