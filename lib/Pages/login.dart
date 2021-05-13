import 'package:flutter/material.dart';
import 'package:m2/Pages/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Center(child: Text('Feedbacksy', style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'))),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 50,
                  ),
                ),
              ),
              Center(child: Text('Login', style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'))),
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
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter valid mail id as abc@gmail.com'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child:
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home()));
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15, fontFamily: 'Montserrat'),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Center(child: Text('Powered by Moodle')),
            ],
          )),
    );
  }
}

/*

 */