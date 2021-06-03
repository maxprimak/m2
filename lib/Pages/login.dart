import 'package:flutter/material.dart';
import 'package:m2/Pages/home.dart';
import 'package:m2/Services/user_profile.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static final _user = User(name: 'Peter');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 200,
                height: 1,
              ),
            ),
          ),
          Center(
              child: Text('Feedbacksy',
                  style: TextStyle(fontSize: 40, fontFamily: 'Rubik'))),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Container(
                width: 200,
                height: 50,
              ),
            ),
          ),
          Center(
              child: Text('Login',
                  style: TextStyle(fontSize: 20, fontFamily: 'Rubik'))),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Center(
              child: Container(
                width: 200,
                height: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              initialValue: '${_user.email}',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail id as abc@gmail.com'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              obscureText: true,
              initialValue: '${_user.password}',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password'),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[800],
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Rubik'),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Text(
              'Forgot Password',
              style: TextStyle(
                  color: Colors.blue, fontSize: 15, fontFamily: 'Rubik'),
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Center(
            child: Text(
              'Powered by Moodle',
              style: TextStyle(
                  color: Colors.blue[800], fontSize: 15, fontFamily: 'Rubik'),
            ),
          ),
        ],
      )),
    );
  }
}

/*

 */
