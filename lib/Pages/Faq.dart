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
                  "Question 1?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae rutrum orci. Aliquam sollicitudin odio vel luctus lacinia. Curabitur vel diam eget nibh tempor blandit non non tellus. In ut ultricies urna. Vestibulum nec ex iaculis, tristique leo ut, consectetur metus. Pellentesque laoreet est sem, sit amet pulvinar est auctor luctus."),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Question 2?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae rutrum orci. Aliquam sollicitudin odio vel luctus lacinia. Curabitur vel diam eget nibh tempor blandit non non tellus. In ut ultricies urna. Vestibulum nec ex iaculis, tristique leo ut, consectetur metus. Pellentesque laoreet est sem, sit amet pulvinar est auctor luctus."),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Question 3?",
                  style: TextStyle(fontFamily: 'Montserrato', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae rutrum orci. Aliquam sollicitudin odio vel luctus lacinia. Curabitur vel diam eget nibh tempor blandit non non tellus. In ut ultricies urna. Vestibulum nec ex iaculis, tristique leo ut, consectetur metus. Pellentesque laoreet est sem, sit amet pulvinar est auctor luctus."),
              ],
            ),
          )
        ],
      )),
    );
  }
}
