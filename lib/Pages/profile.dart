import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:m2/Services/user_profile.dart';
import 'package:m2/model/profile_input.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);
  static const routeName = '/Profile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static final _user = User(name: 'Peter');
  var _userInput = ProfileInput(_user);

  var optionNotificationNewReview = false;
  var optionNotificationNewComment = false;
  var optionNotificationReviewViewed = false;
  var optionNotificationReviewDeleted = false;
  var optionSoundOn = false;
  var optionPublicOn = true;
  final optionNotificationNewReviewName = "New review";
  final optionNotificationNewCommentName = "New comment";
  final optionNotificationReviewViewedName = "Review viewed";
  final optionNotificationReviewDeletedName = "Review deleted";
  final optionSoundOnName = "Sound";
  final optionPublicOnName = "Public";
  final TextStyle _listHeaderTextStyle = TextStyle(
      fontFamily: 'Montserrat', fontSize: 35, fontWeight: FontWeight.bold);
  final TextStyle _listSettingTextStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 25);
  final TextStyle _listTileTextStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20);

  int _currentIndexprofil = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
          _getHeader(),
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
          Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Profile",
                        style:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 35),
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(30),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(_user.ppicture),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "${_user.name} ${_user.lastname}",
                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text("#Student",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.grey))),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Settings",
                style: _listHeaderTextStyle,
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Notifications",
                style: _listSettingTextStyle,
              )),
          SwitchListTile(
            title: Text(
              optionNotificationNewReviewName,
              style: _listTileTextStyle,
            ),
            value: optionNotificationNewReview,
            onChanged: (bool value) {
              setState(() {
                optionNotificationNewReview = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(
              optionNotificationNewCommentName,
              style: _listTileTextStyle,
            ),
            value: optionNotificationNewComment,
            onChanged: (bool value) {
              setState(() {
                optionNotificationNewComment = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(
              optionNotificationReviewViewedName,
              style: _listTileTextStyle,
            ),
            value: optionNotificationReviewViewed,
            onChanged: (bool value) {
              setState(() {
                optionNotificationReviewViewed = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(
              optionNotificationReviewDeletedName,
              style: _listTileTextStyle,
            ),
            value: optionNotificationReviewDeleted,
            onChanged: (bool value) {
              setState(() {
                optionNotificationReviewDeleted = value;
              });
            },
          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Text(
                "Other",
                style: _listSettingTextStyle,
              )),
          SwitchListTile(
            title: Text(
              optionSoundOnName,
              style: _listTileTextStyle,
            ),
            value: optionSoundOn,
            onChanged: (bool value) {
              setState(() {
                optionSoundOn = value;
              });
            },
          ),
          SwitchListTile(
            title: Text(
              optionPublicOnName,
              style: _listTileTextStyle,
            ),
            value: optionPublicOn,
            onChanged: (bool value) {
              setState(() {
                optionPublicOn = value;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[800],
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text(
                'Log out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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
              _currentIndexprofil = index;
            });
            switch (_currentIndexprofil) {
              case 0:
                Navigator.pushNamed(context, '/home');
                break;
              case 1:
                break;
              case 2:
                Navigator.pushNamed(context, '/faq');
                break;
            }
          },
        ));
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
        ],
      ),
    );
  }
}
