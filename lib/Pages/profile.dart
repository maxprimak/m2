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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedbacksy',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: NetworkImage(_user.ppicture),
            ),
          )
        ],
      ),
      body: ListView(children: <Widget>[
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
                      style: TextStyle(fontFamily: 'Montserrato', fontSize: 35),
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
                    style: TextStyle(fontFamily: 'Montserrato', fontSize: 20),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text("#Student",
                      style: TextStyle(
                          fontFamily: 'Montserrato',
                          fontSize: 15,
                          color: Colors.grey))),
              Padding(
                padding:
                    EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 10),
                child: TextFormField(
                  enabled: false,
                  initialValue: '${_user.name}',
                  onChanged: (newVal) {
                    _userInput.firstName = newVal;
                  },
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'First name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: TextFormField(
                  enabled: false,
                  initialValue: '${_user.lastname}',
                  onChanged: (newVal) {
                    _userInput.lastName = newVal;
                  },
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Last name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: TextFormField(
                  initialValue: '${_user.email}',
                  onChanged: (newVal) {
                    _userInput.email = newVal;
                  },
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'E-mail'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: TextFormField(
                  initialValue: '${_user.password}',
                  onChanged: (newVal) {
                    _userInput.pwd = newVal;
                  },
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Password'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: TextFormField(
                  onChanged: (newVal) {
                    _userInput.rePwd = newVal;
                  },
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  initialValue: '${_user.password}',
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Retype password'),
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save,
          color: Colors.black,
        ),
        onPressed: () {
          if (_userInput.pwdMatches()) {
            Fluttertoast.showToast(msg: 'Saved changes!');
          } else {
            Fluttertoast.showToast(msg: 'Passwords do not match!');
          }
        },
      ),
    );
  }
}
