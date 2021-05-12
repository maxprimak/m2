import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF1ebd83),
            title: Center(
              child: Text(
                  "Feedbacksy"), // ich wuerde es lieber mit safearea loesen
            )),
        body: Text("Nice"));
  }
}
