import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:m2/Services/review.dart';

import '../Services/user_profile.dart';
import '../Services/global.dart' as global;

class AddReview extends StatefulWidget {
  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  User usertmp = User(name: "Peter");
  TextEditingController editingController = TextEditingController();
  bool checkAnonym = false;

  // Style
  final _listFont = TextStyle(fontSize: 18.0, fontFamily: 'Rubik');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
          _getHeader(),
          _getLvInfo(),
          _getLvTeacherInfo(),
          SizedBox(height: 10),
          _getDivider(),
          _buildRow('Difficulty*'),
          _buildStars(),
          _getDivider(),
          _buildRow('Teachers team*'),
          _buildStars(),
          _getDivider(),
          _buildRow('Reviews'),
          _buildInputBox(),
                  _checkBox(),
          _saveButton(),

        ])));
  }

  Widget _checkBox(){
    return Row(
      children: [
        Checkbox(
          value: this.checkAnonym,
          onChanged: (value) {
            setState(() {
              this.checkAnonym = !this.checkAnonym;
            });
          },
        ),
        Text('Anonym'),
      ],
    );
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
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: ElevatedButton(
              onPressed: () {
                addReviewToStorage();
                Navigator.pushReplacementNamed(context, '/lv');
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue[600]),
              child: Text("Publish review",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
        )
      ],
    );
  }

  void addReviewToStorage() {
    global.currLV.numberTeachReview += 1;
    global.currLV.numberDiffReview += 1;
    String userName = "Peter Schwarzer";
    if (this.checkAnonym) userName ="Anonym";
    if (editingController.text.isNotEmpty) {
      Review newReview =
          Review(teacher: 4, examdiff: 4, text: editingController.text, semestr: '2021S', user: userName);
      global.currLV.r_list.add(newReview);
      global.currLV.sortList.add(newReview);
    }
  }

  Container _getHeader() {
    return Container(
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
              global.currLV.name,
              style: TextStyle(fontSize: 20, fontFamily: 'Rubik', fontWeight: FontWeight.bold),
            ),
          ),
          Icon(
            Icons.favorite,
            color: global.favIconColorADS,
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
            "By ${global.currLV.profesor1}",
            style: TextStyle(fontSize: 15, fontFamily: 'Rubik'),
          ),
        ],
      ),
    );
  }
}
