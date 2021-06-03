import 'package:flutter/material.dart';

import '../Services/user_profile.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  User usertmp = User(name: "Peter");

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
          children: <Widget>[
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "FAQ",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "How to add a review?",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "After you find your Subject, you want to create review for click on it. In the Subject you will find an button with “Add review” sign where you can create the review for your subject.",
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Can I change my name?",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No. Your name is taken from Moodle / U:space profile so therefore it can not be changed.",
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Can I change my password?",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "No. Your name is taken from Moodle / U:space profile so therefore it can not be changed.",
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "How to change the profile picture?",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The profile picture is taken from Moodle. So it needs to be changed on moodle site of your school.",
                    style: TextStyle(fontFamily: 'Rubik', fontSize: 17),
                  ),
                ],
              ),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                Navigator.pushNamed(context, '/profile');
                break;
              case 2:
                break;
            }
          },
        ));
  }
}
