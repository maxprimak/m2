import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Services/user_profile.dart';
import '../../Services/lv.dart';
import '../../Services/global.dart' as global;

class Lv_profile extends StatelessWidget {
  User usertmp = User(name: "Peter");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/menu');
            }),
        body: SafeArea(
            child: ListView(children: <Widget>[
          Padding(
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
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxWidth: 200),
                  child: Text(
                    global.algo.name,
                    style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
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
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Avg. Mark: ${global.algo.avgmark}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Difficulty: ${global.algo.difficulty}",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Teachers team: ${global.algo.techteam}",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Reviews",
                      style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/addreview');
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text("Add review",
                            style: TextStyle(
                              color: Colors.black,
                            )))
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
