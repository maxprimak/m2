import 'package:flutter/material.dart';
import 'package:m2/Pages/teacher_page.dart';

//import all of your site files here
import 'Pages/add_review.dart';
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
        '/home': (context) => Home(),
        '/lv': (context) => Lv_profile(),
        '/faq': (context) => Faq(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
        '/addreview': (context) => AddReview(),
        '/menu': (context) => MenuPage(),
        '/teacher' : (context) => TeacherPage()
      },
    )); //App starter
