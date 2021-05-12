import 'review.dart';

class Lv {
  int lv_id;
  String name;
  String profesors;
  double avgmark;
  double difficulty;
  double techteam;
  List<Review> r_list;

  Lv(
      {this.lv_id,
      this.name,
      this.profesors,
      this.avgmark,
      this.difficulty,
      this.techteam,
      this.r_list});
}
