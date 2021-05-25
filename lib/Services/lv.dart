import 'review.dart';

class Lv {
  int lv_id;
  String name;
  String profesors;
  double avgmark;
  double difficulty;
  double techteam;
  List<Review> r_list;

  Lv({this.lv_id, this.name, this.profesors, this.avgmark, this.r_list});
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
  tmpreturn.profesors = tmp.profesors;
  tmpreturn.avgmark = tmp.avgmark;
  tmpreturn.techteam = teach / tmp.r_list.length;
  tmpreturn.difficulty = diff / tmp.r_list.length;
  tmpreturn.r_list = tmp.r_list;

  return tmpreturn;
}
