import 'package:flutter/material.dart';

//import all of your site files here
import 'Pages/home.dart';
import 'Pages/LVs/lv_site.dart';
import 'Pages/Faq.dart';

//in this formate import your Site widgets
void main() => runApp(MaterialApp(
      initialRoute: '/lv',
      routes: {
        '/home': (context) => Home(), // !!!!!!! the home should be the LVliste?
        '/lv': (context) => Lv_profile(),
        '/faq': (context) => Faq(),
      },
    )); //App starter
