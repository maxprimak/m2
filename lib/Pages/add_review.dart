import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Services/user_profile.dart';
import '../Services/global.dart' as global;

class AddReview extends StatefulWidget {
  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  User usertmp = User(name: "Peter");
  TextEditingController editingController = TextEditingController();

  // Style
  final _listFont = TextStyle(fontSize: 18.0, fontFamily: 'Montserrat');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: _getMenuButton(context),
        body: SafeArea(
            child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
              _getHeader(),
              SizedBox(height: 10),
              _getDivider(),
              _getLvInfo(),
              _getLvTeacherInfo(),
              SizedBox(height: 10),
              _getDivider(),
              _buildRow('Difficulty'),
              _buildStars(),
              _getDivider(),
              _buildRow('Teachers team'),
              _buildStars(),
              _getDivider(),
              _buildRow('Reviews'),
              _buildInputBox(),
              _saveButton()
            ])));
  }

  Widget _buildRow(String title) {
    return ListTile(
      title: new Text(title, style: _listFont),
    );
  }

  Widget _buildStars() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ]);
  }

  Widget _buildInputBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: editingController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 60.0),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _saveButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.white),
            child: Text("Publish review",
                style: TextStyle(
                  color: Colors.black,
                )))
      ],
    );
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
          Icon(
            Icons.favorite,
            color: Colors.red,
          )
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
