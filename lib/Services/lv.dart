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

void resultcalculate(Lv tmp) {
  double teach = 0;
  double diff = 0;
  for (int i = 0; i < tmp.r_list.length; i++) {
    diff += tmp.r_list[i].examdiff;
    teach += tmp.r_list[i].teacher;
  }
  tmp.techteam = teach / tmp.r_list.length;
  tmp.difficulty = diff / tmp.r_list.length;
}
