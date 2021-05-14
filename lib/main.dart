import 'package:flutter/material.dart';

//import all of your site files here
import 'Pages/home.dart';
import 'Pages/LVs/lv_site.dart';
import 'Pages/Faq.dart';
import 'Pages/login.dart';
import 'Pages/menu.dart';
import 'Pages/profile.dart';
import 'Pages/settings.dart';

//in this formate import your Site widgets
void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/home': (context) => Home(), // !!!!!!! the home should be the LVliste?
        '/lv': (context) => Lv_profile(),
        '/faq': (context) => Faq(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
        '/menu': (context) => MenuPage()
      },
    )); //App starter
