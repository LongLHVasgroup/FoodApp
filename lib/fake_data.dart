// ignore: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'models/category.dart';
import 'package:flutter/material.dart';

import 'models/food.dart';

const FAKE_CATEGORIES = [
  Category(id: 1, content: 'Bánh mì', color: Colors.red),
  Category(id: 2, content: 'Cơm tấm', color: Colors.blue),
  Category(id: 3, content: 'Hủ tiếu', color: Colors.blue),
  Category(id: 4, content: 'Bún bò', color: Colors.green),
  Category(id: 5, content: 'Pizza', color: Colors.pink),
  Category(id: 6, content: 'Phở', color: Colors.redAccent),
  Category(id: 7, content: 'Mì bò', color: Colors.purpleAccent),
  Category(id: 8, content: 'Bánh canh', color: Colors.orangeAccent),
  Category(id: 9, content: 'Bún riêu', color: Colors.cyanAccent),
];

var FAKE_FOODS = [
  Food(
      name: 'Bánh mì xíu mại',
      urlImage:
          'http://cdn.tgdd.vn/Files/2021/09/06/1380700/cach-lam-banh-mi-heo-quay-thom-ngon-cho-bua-sang-dinh-duong-202201041047079624.jpg',
      duration: const Duration(minutes: 3),
      complexity: Complexity.Easy,
      ingredients: [
        'Bánh mì không',
        'Xíu mại',
        'Dưa leo',
        'Đồ chua',
        'Bánh mì không',
        'Xíu mại',
        'Dưa leo',
        'Đồ chua'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh mì thịt nguội',
      urlImage:
          'http://cdn.tgdd.vn/Files/2021/09/06/1380700/cach-lam-banh-mi-heo-quay-thom-ngon-cho-bua-sang-dinh-duong-202201041047079624.jpg',
      duration: const Duration(minutes: 3),
      complexity: Complexity.Easy,
      ingredients: ['Bánh mì không', 'Xíu mại', 'Dưa leo', 'Đồ chua'],
      categoryId: 1),
  Food(
      name: 'Bánh mì heo quay',
      urlImage:
          'http://cdn.tgdd.vn/Files/2021/09/06/1380700/cach-lam-banh-mi-heo-quay-thom-ngon-cho-bua-sang-dinh-duong-202201041047079624.jpg',
      duration: const Duration(minutes: 3),
      complexity: Complexity.Medium,
      ingredients: ['Bánh mì không', 'Heo quay', 'Dưa leo', 'Đồ chua'],
      categoryId: 1),
  Food(
      name: 'Phở gà',
      urlImage:
          'https://cdn.tgdd.vn/Files/2017/04/13/971702/cach-nau-pho-ga-dam-da-thit-mem-ngot-nuoc-ngay-tai-nha-202208261403291931.jpg',
      duration: const Duration(minutes: 5),
      complexity: Complexity.Simple,
      ingredients: ['Phở', 'Gà', 'Hành tây', 'Đường'],
      categoryId: 6)
];
