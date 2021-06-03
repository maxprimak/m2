import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Style
  final _listFont = TextStyle(fontSize: 18.0, fontFamily: 'Rubik');
  final _titleFont = TextStyle(
      fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Rubik');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Menu", style: _titleFont),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: _buildMenuList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuList() {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        _buildRow('Home Page', '/home'),
        Divider(),
        _buildRow('Profile', '/profile'),
        Divider(),
        _buildRow('FAQ', '/faq'),
        Divider(),
        _buildRow('Settings', '/settings'),
        Divider(),
        _buildRow('Logout', '/login'),
        Divider(),
      ],
    );
  }

  Widget _buildRow(String pageName, String pageLink) {
    return ListTile(
        title: new Center(child: Text(pageName, style: _listFont)),
        onTap: () {
          Navigator.pushNamed(context, pageLink);
        });
  }
}
