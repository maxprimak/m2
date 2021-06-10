import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../Services/user_profile.dart';
import '../../Services/lv.dart';
import '../../Services/global.dart' as global;

class Lv_profile extends StatefulWidget {
  @override
  _Lv_profileState createState() => _Lv_profileState();
}

class _Lv_profileState extends State<Lv_profile> {
  User usertmp = User(name: "Peter");

  // Color _favIconColor = Colors.red;
  Color _favIconColor = global.favIconColorADS; //todo make abstract from lv
  int amountofreviews = global.currLV.r_list.length;

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
                global.currLV.name,
                style: TextStyle(fontSize: 20, fontFamily: 'Rubik', fontWeight: FontWeight.bold),
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/teacher');
              },
              child:  Text(
                " ${global.currLV.profesor1} ︎▶",
                style: TextStyle(fontSize: 15, fontFamily: 'Rubik', color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/teacher');
              },
              child:  Text(
                " ${global.currLV.profesor2} ▶",
                style: TextStyle(fontSize: 15, fontFamily: 'Rubik', color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Avg. Mark: ${global.currLV.avgmark}",
              style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
            ),
            SizedBox(
              height: 3,
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
                  "(" + global.currLV.numberDiffReview.toString() + ")",
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
                  "(" + global.currLV.numberTeachReview.toString() + ")",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                        fontWeight: FontWeight.bold))),
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
                getSortButton(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            for (var i = global.currLV.r_list.length - 1; i >= 0; i--)
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (global.dropdownValue == 'by Date')
                    Text(
                      "${global.currLV.r_list[i].user}, ${global.currLV.r_list[i].semestr}",
                      style: TextStyle(fontSize: 18),
                    ),
                    if (global.dropdownValue == 'by Semester')
                      Text(
                        "${global.currLV.r_list[i].user}, ${global.currLV.sortList[i].semestr}",
                        style: TextStyle(fontSize: 18),
                      ),
                    SizedBox(height: 5),
                    if (global.dropdownValue == 'by Date')
                      Text(global.currLV.r_list[i].text),
                    if (global.dropdownValue == 'by Semester')
                      Text(global.currLV.sortList[i].text),
                  ],
                ),
              )
          ],
        ),
      )
    ])));
  }

  Widget getSortButton() {
    return DropdownButton<String>(
      value: global.dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 18,
      elevation: 16,
      style: const TextStyle(
          fontFamily: 'Rubik',
          fontSize: 15,
        color: Colors.black,

      ),
      underline: Container(
        height: 0.5,
        color: Colors.black,
      ),
      onChanged: (String newValue) {
        setState(() {
          global.dropdownValue = newValue;
        });
      },
      items: <String>['by Date', 'by Semester']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,  style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Rubik')),
        );
      })
          .toList(),
    );
  }


}
