import 'dart:ui';

import 'review.dart';

class Lv {
  int lv_id;
  String name;
  String profesor1;
  String profesor2;
  double avgmark;
  double difficulty;
  double techteam;
  int numberDiffReview = 7;
  int numberTeachReview = 10;
  List<Review> r_list;
  List<Review> sortList;
  Color liked;
  String profPicture;

  Lv({this.lv_id, this.name, this.profesor1, this.profesor2, this.avgmark, this.r_list, this.sortList, this.liked, this.profPicture});
}

Lv resultcalculate(Lv tmp) {
  Lv tmpreturn;
  double teach = 0;
  double diff = 0;
  for (int i = 0; i < tmp.r_list.length; i++) {
    diff += tmp.r_list[i].examdiff;
    teach += tmp.r_list[i].teacher;
  }

  tmpreturn.lv_id = tmp.lv_id;
  tmpreturn.name = tmp.name;
  tmpreturn.profesor1 = tmp.profesor1;
  tmpreturn.avgmark = tmp.avgmark;
  tmpreturn.techteam = teach / tmp.r_list.length;
  tmpreturn.difficulty = diff / tmp.r_list.length;
  tmpreturn.r_list = tmp.r_list;

  return tmpreturn;
}
