import 'dart:io';

import 'package:intern_assignment/model/info/info.dart';
import 'package:intern_assignment/model/results/result.dart';

class Constant {
  static List<Actors> actors = [];

  static List<Results> results = [];

  static Info? info;
}

// For task 2 & 3
class Actors {
  File image;
  String name;

  Actors({required this.image, required this.name});
}
