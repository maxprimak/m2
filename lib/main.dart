import 'package:flutter/material.dart';

import 'Pages/home.dart';
import 'Pages/LVs/lv_site.dart';
import 'Pages/Faq.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/faq',
      routes: {
        '/home': (context) => Home(),
        '/lv': (context) => Lv_profile(),
        '/faq': (context) => Faq(),
      },
    )); //App starter
