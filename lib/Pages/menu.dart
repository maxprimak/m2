import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // Style
  final _listFont = TextStyle(fontSize: 18.0);
  final _welcomeFont = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                " Menu",
                style: _welcomeFont,
              ),
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

  Widget _buildRow(String pageName, String pageLink ) {
    return ListTile(
        title: Text(
          pageName,
          style: _listFont,
        ),
        onTap: () {
          Navigator.pushNamed(
              context,
              pageLink);
        });
  }
}
