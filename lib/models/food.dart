// ignore_for_file: constant_identifier_names

import 'dart:math';

class Food {
  //fields
  int? id;
  String? name;
  String? urlImage;
  Duration? duration;
  Complexity? complexity;
  List<String>? ingredients;
  int? categoryId;

  Food({
    required this.name,
    required this.urlImage,
    required this.duration,
    this.complexity,
    this.ingredients,
    this.categoryId,
  }) {
    id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Easy }
