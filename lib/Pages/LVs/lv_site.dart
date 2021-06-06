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
                      "Review #${i + 1},  ${global.algo.r_list[i].semestr}",
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
