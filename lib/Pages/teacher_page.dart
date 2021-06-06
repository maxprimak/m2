import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../Services/user_profile.dart';
import '../Services/lv.dart';
import '../Services/global.dart' as global;

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPage createState() => _TeacherPage();
}

class _TeacherPage extends State<TeacherPage> {
  User usertmp = User(name: "Peter");

  // Color _favIconColor = Colors.red;
  Color _favIconColor = global.favIconColorADS;
  int amountofreviews = global.templist.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: <Widget>[
              Container(
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
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        global.algo.name,
                        style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite),
                        color: _favIconColor,
                        onPressed: () {
                          setState(() {
                            if (_favIconColor == Colors.grey) {
                              _favIconColor = Colors.red;
                            } else {
                              _favIconColor = Colors.grey;
                            }
                          });
                        })
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "By ${global.algo.profesors}",
                      style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Avg. Mark: ${global.algo.avgmark}",
                      style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Difficulty:",
                          style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
                        ),
                        SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: 4.5,
                            size: 30.0,
                            isReadOnly: true,
                            color: Colors.yellow[700],
                            borderColor: Colors.yellow[700],
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            spacing: 0.0),
                        Text(
                          "(" + global.algo.numberDiffReview.toString() + ")",
                          style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Teachers team:",
                          style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
                        ),
                        SmoothStarRating(
                            allowHalfRating: true,
                            starCount: 5,
                            rating: 4.5,
                            size: 30.0,
                            isReadOnly: true,
                            color: Colors.yellow[700],
                            borderColor: Colors.yellow[700],
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            spacing: 0.0),
                        Text(
                          "(" + global.algo.numberTeachReview.toString() + ")",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Reviews ( $amountofreviews )",
                          style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/addreview');
                            },
                            style: ElevatedButton.styleFrom(primary: Colors.blue[600]),
                            child: Text("Add review",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    for (var i = 0; i < global.algo.r_list.length; i++)
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Review Nr.: ${i + 1}",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 5),
                            Text(global.algo.r_list[i].text),
                          ],
                        ),
                      )
                  ],
                ),
              )
            ])));
  }
}
