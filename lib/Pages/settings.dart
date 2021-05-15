import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:m2/Services/user_profile.dart';
import './../Services/user_profile.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);
  static const routeName = '/Settings';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _user = User(name: 'Peter');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    backgroundImage: NetworkImage(_user.ppicture),
                  ),
                ),
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
        ],
      ),
    ));
  }
}
