library M2.global;

import 'package:m2/Services/lv.dart';
import 'package:m2/Services/review.dart';

//"Unsere Database von den LVs und Reviews"

//Reviews
Review r1 = Review(
    effort: 2,
    teacher: 4,
    examdiff: 4,
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis tellus nec turpis hendrerit ultrices. Curabitur risus purus, rutrum ultrices nulla ut, lacinia rhoncus ante. Sed ut urna nulla. Pellentesque.");

Review r2 = Review(
    effort: 2,
    teacher: 4,
    examdiff: 1,
    text:
        "Praesent vel ante nisi. Ut vel erat lorem. Ut pharetra arcu sed turpis feugiat, id tincidunt purus blandit. Donec ornare lectus ut urna maximus, non posuere quam feugiat.");

Review r3 = Review(
    effort: 1,
    teacher: 1,
    examdiff: 1,
    text:
        "onec sagittis urna id orci consequat, ut cursus est ultricies. Pellentesque varius sed orci quis iaculis. Vestibulum fermentum nibh vitae sapien suscipit, quis maximus odio lobortis.");

Review r4 = Review(
    effort: 1,
    teacher: 1,
    examdiff: 1,
    text:
        "onec sagittis urna id orci consequat, ut cursus est ultricies. Pellentesque varius sed orci quis iaculis. Vestibulum fermentum nibh vitae sapien suscipit, quis maximus odio lobortis.");

List<Review> templist = [r1, r2, r3, r4];
//LVs
Lv algo = Lv(
    lv_id: 666,
    name: "Algorithmen und Datenstrukturen 1",
    profesors: "H. Wanek, E. Schikuta",
    avgmark: 4.3,
    difficulty: 5,
    techteam: 2,
    r_list: templist);
