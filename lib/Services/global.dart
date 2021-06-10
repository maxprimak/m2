library M2.global;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:m2/Services/lv.dart';
import 'package:m2/Services/review.dart';

//"Unsere Database von den LVs und Reviews"

//Reviews
Review r1 = Review(
    teacher: 4,
    examdiff: 4,
    text:
        "Ich finde die ADS sehr schwer und zu wenig zeit für alles was wir da machen. Ich würde empfehlen bisschen mehr zu arbeiten und zuhören.",
    semestr: '2021S',
    user: "Anonym");

Review r2 = Review(
    teacher: 4,
    examdiff: 1,
    text: "Jo, ADS ist ok. Ich hatte schon eine bessere Lv aber geht’s schon.",
    semestr: '2020W',
    user: "Max Mustermann");

Review r3 = Review(
    teacher: 5,
    examdiff: 3,
    text:
        "Die ADS ist schlecht. Ich würde lieber als Bundeskanzler arbeiten, wie diese LV wieder zu machen. Die Lehrer nur präsentieren und das Forum ist nicht das Beste, was sein könnte.",
    semestr: '2021S',
    user: "Sebastian Kurz");

Review r4 = Review(
    teacher: 3,
    examdiff: 1,
    text:
        "Ja geht’s. War nicht so schlecht, wenn machen zu hört und mitmacht während der LV.",
    semestr: '2021S',
    user: "Linus Torvalds");

Review r5 = Review(
    teacher: 5,
    examdiff: 4,
    text: "Ich will es nie mehr sehen :)",
    semestr: '2020W',
    user: "Anonym");

Review r6 = Review(
    teacher: 5,
    examdiff: 5,
    text:
        "Für mich war es schwer. Ich hatte kein Boch darauf. Ich hatte so viele Schwierigkeiten damit, dass ich es fast nicht geschafft habe.",
    semestr: '2020W',
    user: "Anonym");

Review r7 = Review(
    teacher: 1,
    examdiff: 2,
    text:
        "Ja, ganz großartige Lv. Ich würde gerne noch was damit machen. Die Lehrer waren super nur der Test war schlecht…",
    semestr: '2020W',
    user: "Peter Thiel");

Review r8 = Review(
    teacher: 3,
    examdiff: 5,
    text:
        "Die beste Sache, war wenn der Lehrer gesagt hat, dass wir das Projekt in 5 Tagen abgeben sollen… Ich habe nie so was erwartet von den. Plus der Test war schwierig as Hell.",
    semestr: '2020S',
    user: "Max Verstapell");

Review r9 = Review(
    teacher: 3,
    examdiff: 4,
    text:
        "Ja, ich habe schon schlechtere Sachen gemacht, aber es ist nicht die einfachste LV.",
    semestr: '2020S',
    user: "Anonym");

Review r10 = Review(
    teacher: 2,
    examdiff: 3,
    text:
        "Die Lehrer sind schon ok aber der Stoff und der Test sind nicht die einfachste. Ich würde bisschen mehr lernen empfehlen.",
    semestr: '2020S',
    user: "Tim Ferris");

Review r11 = Review(
    teacher: 2,
    examdiff: 5,
    text:
        "Na ja, der Test habe ich nicht erwartet. Ich habe es echt schlecht geschrieben und ich muss es wiederholen… Die Lehrer sind gut, aber ich hab es nicht verstanden, was die von mir wollten…",
    semestr: '2020W',
    user: "Paul Graham");

//LVs
Lv currLV = adsLV;

// Extra
String dropdownValue = 'by Date';
String profPicture =
    "https://images-na.ssl-images-amazon.com/images/I/518AdW4A7pL._AC_.jpg";


// ADS
List<Review> templistAds = [r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1];
List<Review> sortlistAds = [r10, r9, r8, r11, r7, r6, r5, r2, r4, r3, r1];

Lv adsLV = Lv(
    lv_id: 666,
    name: "Algorithmen und Datenstrukturen 1",
    profesor1: "Prof. A. Dumbledore",
    profesor2: "Prof. M. McGonagallov",
    avgmark: 4.3,
    r_list: templistAds,
    sortList: sortlistAds);

Color favIconColorADS = Colors.red;