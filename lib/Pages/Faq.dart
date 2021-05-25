import 'package:flutter/material.dart';

import '../Services/user_profile.dart';

class Faq extends StatelessWidget {
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
          child: ListView(
        children: <Widget>[
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "FAQ",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 35),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "How to add a review?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "After you find your Subject, you want to create review for click on it. In the Subject you will find an button with “Add review” sign where you can create the review for your subject."),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Can I change my name?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "No. Your name is taken from Moodle / Uspace profile so therefore it can not be changed."),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Can I change my password?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "No. Your name is taken from Moodle / Uspace profile so therefore it can not be changed."),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "How to change the profile picture?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "The profile picture is taken from Moodle. So it needs to be change on moodle site of your school."),
              ],
            ),
          )
        ],
      )),
    );
  }
}
