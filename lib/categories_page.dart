// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:foodapp/category_item.dart';
import 'package:foodapp/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = 'CategoriesPage';

  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      // ignore: sort_child_properties_last
      children: FAKE_CATEGORIES
          .map((category) => CategoryItem(category: category))
          .toList(),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, //chiều rộng
          childAspectRatio: 3 / 2, //ti lệ của một ô
          mainAxisSpacing: 10, //khoản các spacing các ô dòng
          crossAxisSpacing: 10 //khoản các spacing các ô cột
          ),
    );
  }
}
