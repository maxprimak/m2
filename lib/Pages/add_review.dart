import 'package:flutter/material.dart';

import '../Services/user_profile.dart';
import '../Services/global.dart' as global;

class AddReview extends StatelessWidget {
  User usertmp = User(name: "Peter");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _getMenuButton(context),
        body: SafeArea(
            child: ListView(children: <Widget>[
          _getHeader(),
          SizedBox(height: 10),
          _getDivider(),
          _getLvInfo(),
          _getLvTeacherInfo()
        ])));
  }

  FloatingActionButton _getMenuButton(context) {
    return FloatingActionButton(
        child: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/menu');
        });
  }

  Padding _getHeader() {
    return Padding(
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
    );
  }

  Padding _getDivider() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        color: Colors.grey[400],
        height: 1,
      ),
    );
  }

  Padding _getLvInfo() {
    return Padding(
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
          Icon(Icons.favorite)
        ],
      ),
    );
  }

  Padding _getLvTeacherInfo() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "By ${global.algo.profesors}",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
